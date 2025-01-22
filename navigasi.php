<div class="card">
    <div class="card-body">
    <center><img src="jjj.png"widht=150 height=100></center>
    </div>
</div>

<div class="list-group mt-4">
    <a href="?page=home" class="list-group-item <?php if($page=='home'||empty($page)){echo"active";} ?>">Home</a>
    <a href="?page=asistenAI" class="list-group-item <?php if($page=='asistenAI'){echo"active";} ?>">Asisten </a>
    <a href="?page=kalender" class="list-group-item <?php if($page=='kalender'){echo"active";} ?>">kalender</a>
    <a href="?page=jadwal" class="list-group-item <?php if($page=='jadwal'){echo"active";} ?>">Jadwal</a>
    <a href="?page=ruangan" class="list-group-item <?php if($page=='ruangan'){echo"active";} ?>">Pemakaian Ruangan</a>
    <a href="?page=tugas" class="list-group-item <?php if($page=='tugas'){echo"active";} ?>">Tugas</a>
    <a href="?page=tugas_kel" class="list-group-item <?php if($page=='tugas_kel'){echo"active";} ?>">Diskusi</a>
    <a href="?page=catatan" class="list-group-item <?php if($page=='catatan'){echo"active";} ?>">Catatan Agenda</a>
    <a href="?page=contact" class="list-group-item <?php if($page=='contact'){echo"active";} ?>">Contact </a>
    <a href="?page=logout" class="list-group-item">Logout</a>
</div>

