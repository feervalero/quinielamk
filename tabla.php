<table id="quiniela" >
				<tr>
					<th colspan="3" ></th>
					<th width="20%" style="text-align: center;background-color:#2A76E7;">L</th>
					<th width="20%" style="text-align: center;background-color:#23D530;">E</th>
					<th width="20%" style="text-align: center;background-color:#F3A723;">V</th>
				</tr>
				<?php 
				/*echo "userid: ".$_GET['userid']."<br>";
				echo "jornada: ".$jornada."<br>";*/
				$queryForExistingRecords = "SELECT * FROM `juegos` j  left join `users` u on j.id=u.partido and userid='".$_GET['userid']."' left join `equipos` e on e.id=j.local  left join `equipos` f on f.id=j.visitante  where j.jornada=$jornada order by j.id";
				$resultExistingRecords = mysqli_query($connect,$queryForExistingRecords);
				while($row=$resultExistingRecords->fetch_array()){
					/*echo $row['local']."<br>";*/
				?>
				<tr>
					<td><img src=  <?php echo "img/".$row[12]?>  ></td> <!--local-->
					<td><strong>vs</strong></td>
					<td><img src=  <?php echo "img/".$row[16]?>  ></td> <!--visitante-->
					<td class="radios" colspan="3">	
						<input type="radio" name="<?php echo $row[0];?>" <?php if(isset($row['resultado']) && $row['resultado']=='L') echo 'checked'; ?> value="L"> <!--if L-->
						<input type="radio" name="<?php echo $row[0];?>" <?php if(isset($row['resultado']) && $row['resultado']=='E') echo 'checked'; ?> value="E"> <!--if E-->
						<input type="radio" name="<?php echo $row[0];?>" <?php if(isset($row['resultado']) && $row['resultado']=='V') echo 'checked'; ?> value="V"> <!--if V-->
					</td>
				</tr>

				<?php
				}

				
				$query = mysqli_query($connect,"SELECT * FROM juegos j join equipos e on j.local=e.id join equipos v on j.visitante=v.id where jornada=(select value from config where attribute='jornada')");
				/*while($row=$query->fetch_array()){

					?>
					<tr height="0px">
						<td><img src=  <?php echo "img/".$row[7]?>  ></td> <!--local-->
						<td><strong>vs</strong></td>
						<td><img src=  <?php echo "img/".$row[11]?>  ></td> <!--visitante-->
						<td class="radios" colspan="3">	
							<input type="radio" name="<?php echo $row[0];?>" checked value="L"> <!--if L-->
  							<input type="radio" name="<?php echo $row[0];?>" value="E"> <!--if E-->
  							<input type="radio" name="<?php echo $row[0];?>" value="V"> <!--if V-->
  						</td>


					</tr>


					<?php
				}*/
				
				?>
			</table>