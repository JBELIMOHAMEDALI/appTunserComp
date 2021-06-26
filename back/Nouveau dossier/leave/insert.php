<?php
if($_SERVER['REQUEST_METHOD'] == 'POST'){
    require_once "../db.php";
    $from = $_POST['from'];
    $to=$_POST['to'];
    $description=$_POST['description'];
  //  $justification=$_POST['justification'];
    $year=date("Y");
    $matricule =$_POST['matricule'];
    $id_type_leave =$_POST['id_type_leave'];

    $img=$_FILES['justification']['name'];
    $extension=pathinfo($img,PATHINFO_EXTENSION);
    $random=rand(0,100000);
    $rename='Upload'.date('Ymd').$random;
    $newname=$rename.'.'.$extension;
    $filename=$_FILES['justification']['tmp_name'];
    if(move_uploaded_file($filename,'./../upload/'.$newname))
    {
    $sql="INSERT INTO `leavee`( `from`, `to`, `description`, `justification`, `year`, `matricule`, `id_type_leave`) 
	values('$from','$to','$description','$newname','$year',$matricule,$id_type_leave);";
    $res=$db->exec($sql);
   if($res){echo "don";
       $date1 = strtotime($from);
       $date2 = strtotime($to);
       $diff = abs($date2 - $date1);
       $years = floor($diff / (365*60*60*24));
       $months = floor(($diff - $years * 365*60*60*24)
           / (30*60*60*24));
       $days = floor(($diff - $years * 365*60*60*24 -
               $months*30*60*60*24)/ (60*60*24));
       $sql2="UPDATE `user` SET leavebalance=leavebalance-".$days." WHERE user.matricule=".$matricule;
       $res2=$db->exec($sql2);
       if($res2)
       {
           $json['success']=1;
           $json['insert']=true;

           echo json_encode($json);
       }
       else
       {
           $json['success']=0;
           $json['insert']=false;
           echo json_encode($json);
       }
   }
   else{ $json['success']=0;
       $json['insert']=false;
       echo json_encode($json);
   }

}} else {
    echo "Method not supported !";
}
?>