
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 a6 54 00 	movl   $0x54a6,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 33 41 00 00       	call   4150 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 ba 54 00 00 	movl   $0x54ba,(%esp)
      2c:	e8 01 40 00 00       	call   4032 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 24 5c 00 	movl   $0x5c24,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 07 41 00 00       	call   4150 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 9d 3f 00 00       	call   3ff2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 ba 54 00 00 	movl   $0x54ba,(%esp)
      64:	e8 c9 3f 00 00       	call   4032 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 a9 3f 00 00       	call   401a <close>

  argptest();
      71:	e8 aa 3c 00 00       	call   3d20 <argptest>
  createdelete();
      76:	e8 b5 12 00 00       	call   1330 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 2b 1d 00 00       	call   1db0 <linkunlink>
  concreate();
      85:	e8 c6 19 00 00       	call   1a50 <concreate>
  fourfiles();
      8a:	e8 41 10 00 00       	call   10d0 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 4b 0e 00 00       	call   ee0 <sharedfd>

  bigargtest();
      95:	e8 c6 38 00 00       	call   3960 <bigargtest>
  bigwrite();
      9a:	e8 31 28 00 00       	call   28d0 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 bb 38 00 00       	call   3960 <bigargtest>
  bsstest();
      a5:	e8 36 38 00 00       	call   38e0 <bsstest>
  sbrktest();
      aa:	e8 41 33 00 00       	call   33f0 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 6b 37 00 00       	call   3820 <validatetest>

  opentest();
      b5:	e8 36 03 00 00       	call   3f0 <opentest>
  writetest();
      ba:	e8 e1 03 00 00       	call   4a0 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 ab 05 00 00       	call   670 <writetest1>
  createtest();
      c5:	e8 86 07 00 00       	call   850 <createtest>

  openiputtest();
      ca:	e8 11 02 00 00       	call   2e0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 21 0d 00 00       	call   e00 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 3b 09 00 00       	call   a20 <pipe1>
  preempt();
      e5:	e8 16 0b 00 00       	call   c00 <preempt>
  exitwait();
      ea:	e8 81 0c 00 00       	call   d70 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 9b 2c 00 00       	call   2d90 <rmdot>
  fourteen();
      f5:	e8 16 2b 00 00       	call   2c10 <fourteen>
  bigfile();
      fa:	e8 e1 28 00 00       	call   29e0 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 2b 1f 00 00       	call   2030 <subdir>
  linktest();
     105:	e8 a6 16 00 00       	call   17b0 <linktest>
  unlinkread();
     10a:	e8 a1 14 00 00       	call   15b0 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 4b 2e 00 00       	call   2f60 <dirfile>
  iref();
     115:	e8 c6 30 00 00       	call   31e0 <iref>
  forktest();
     11a:	e8 f1 31 00 00       	call   3310 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 ab 1d 00 00       	call   1ed0 <bigdir>

  uio();
     125:	e8 56 3b 00 00       	call   3c80 <uio>

  exectest();
     12a:	e8 91 08 00 00       	call   9c0 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 b7 3e 00 00       	call   3ff2 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 34 65 00 00       	mov    0x6534,%eax
     14b:	c7 44 24 04 4c 45 00 	movl   $0x454c,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 f5 3f 00 00       	call   4150 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 df 44 00 00 	movl   $0x44df,(%esp)
     162:	e8 f3 3e 00 00       	call   405a <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 df 44 00 00 	movl   $0x44df,(%esp)
     172:	e8 eb 3e 00 00       	call   4062 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 dc 44 00 00 	movl   $0x44dc,(%esp)
     182:	e8 bb 3e 00 00       	call   4042 <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
  if(chdir("/") < 0){
     18b:	c7 04 24 01 45 00 00 	movl   $0x4501,(%esp)
     192:	e8 cb 3e 00 00       	call   4062 <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
  printf(stdout, "iput test ok\n");
     19b:	a1 34 65 00 00       	mov    0x6534,%eax
     1a0:	c7 44 24 04 84 45 00 	movl   $0x4584,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 a0 3f 00 00       	call   4150 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 b8 44 00 	movl   $0x44b8,0x4(%esp)
     1b9:	00 
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 34 65 00 00       	mov    0x6534,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 89 3f 00 00       	call   4150 <printf>
    exit(1);
     1c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1ce:	e8 1f 3e 00 00       	call   3ff2 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 03 45 00 	movl   $0x4503,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 e7 44 00 	movl   $0x44e7,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 c6 44 00 	movl   $0x44c6,0x4(%esp)
     1ee:	00 
     1ef:	eb c9                	jmp    1ba <iputtest+0x7a>
     1f1:	eb 0d                	jmp    200 <exitiputtest>
     1f3:	90                   	nop
     1f4:	90                   	nop
     1f5:	90                   	nop
     1f6:	90                   	nop
     1f7:	90                   	nop
     1f8:	90                   	nop
     1f9:	90                   	nop
     1fa:	90                   	nop
     1fb:	90                   	nop
     1fc:	90                   	nop
     1fd:	90                   	nop
     1fe:	90                   	nop
     1ff:	90                   	nop

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exitiput test\n");
     206:	a1 34 65 00 00       	mov    0x6534,%eax
     20b:	c7 44 24 04 13 45 00 	movl   $0x4513,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 35 3f 00 00       	call   4150 <printf>
  pid = fork();
     21b:	e8 ca 3d 00 00       	call   3fea <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 91 00 00 00    	js     2b9 <exitiputtest+0xb9>
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 df 44 00 00 	movl   $0x44df,(%esp)
     231:	e8 24 3e 00 00       	call   405a <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 8f 00 00 00    	js     2cd <exitiputtest+0xcd>
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 df 44 00 00 	movl   $0x44df,(%esp)
     245:	e8 18 3e 00 00       	call   4062 <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 75                	js     2c3 <exitiputtest+0xc3>
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 dc 44 00 00 	movl   $0x44dc,(%esp)
     255:	e8 e8 3d 00 00       	call   4042 <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 3a                	js     298 <exitiputtest+0x98>
    exit(0);
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 88 3d 00 00       	call   3ff2 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait(0);
     270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     277:	e8 7e 3d 00 00       	call   3ffa <wait>
  printf(stdout, "exitiput test ok\n");
     27c:	a1 34 65 00 00       	mov    0x6534,%eax
     281:	c7 44 24 04 36 45 00 	movl   $0x4536,0x4(%esp)
     288:	00 
     289:	89 04 24             	mov    %eax,(%esp)
     28c:	e8 bf 3e 00 00       	call   4150 <printf>
}
     291:	c9                   	leave  
     292:	c3                   	ret    
     293:	90                   	nop
     294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	c7 44 24 04 e7 44 00 	movl   $0x44e7,0x4(%esp)
     29f:	00 
      printf(stdout, "mkdir failed\n");
     2a0:	a1 34 65 00 00       	mov    0x6534,%eax
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 a3 3e 00 00       	call   4150 <printf>
      exit(1);
     2ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2b4:	e8 39 3d 00 00       	call   3ff2 <exit>
    printf(stdout, "fork failed\n");
     2b9:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
     2c0:	00 
     2c1:	eb dd                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "child chdir failed\n");
     2c3:	c7 44 24 04 22 45 00 	movl   $0x4522,0x4(%esp)
     2ca:	00 
     2cb:	eb d3                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "mkdir failed\n");
     2cd:	c7 44 24 04 b8 44 00 	movl   $0x44b8,0x4(%esp)
     2d4:	00 
     2d5:	eb c9                	jmp    2a0 <exitiputtest+0xa0>
     2d7:	89 f6                	mov    %esi,%esi
     2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <openiputtest>:
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     2e6:	a1 34 65 00 00       	mov    0x6534,%eax
     2eb:	c7 44 24 04 48 45 00 	movl   $0x4548,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 55 3e 00 00       	call   4150 <printf>
  if(mkdir("oidir") < 0){
     2fb:	c7 04 24 57 45 00 00 	movl   $0x4557,(%esp)
     302:	e8 53 3d 00 00       	call   405a <mkdir>
     307:	85 c0                	test   %eax,%eax
     309:	0f 88 9d 00 00 00    	js     3ac <openiputtest+0xcc>
  pid = fork();
     30f:	e8 d6 3c 00 00       	call   3fea <fork>
  if(pid < 0){
     314:	85 c0                	test   %eax,%eax
     316:	0f 88 b1 00 00 00    	js     3cd <openiputtest+0xed>
     31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     320:	75 3e                	jne    360 <openiputtest+0x80>
    int fd = open("oidir", O_RDWR);
     322:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     329:	00 
     32a:	c7 04 24 57 45 00 00 	movl   $0x4557,(%esp)
     331:	e8 fc 3c 00 00       	call   4032 <open>
    if(fd >= 0){
     336:	85 c0                	test   %eax,%eax
     338:	78 66                	js     3a0 <openiputtest+0xc0>
      printf(stdout, "open directory for write succeeded\n");
     33a:	a1 34 65 00 00       	mov    0x6534,%eax
     33f:	c7 44 24 04 dc 54 00 	movl   $0x54dc,0x4(%esp)
     346:	00 
     347:	89 04 24             	mov    %eax,(%esp)
     34a:	e8 01 3e 00 00       	call   4150 <printf>
      exit(0);
     34f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     356:	e8 97 3c 00 00       	call   3ff2 <exit>
     35b:	90                   	nop
     35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     360:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     367:	e8 16 3d 00 00       	call   4082 <sleep>
  if(unlink("oidir") != 0){
     36c:	c7 04 24 57 45 00 00 	movl   $0x4557,(%esp)
     373:	e8 ca 3c 00 00       	call   4042 <unlink>
     378:	85 c0                	test   %eax,%eax
     37a:	75 5b                	jne    3d7 <openiputtest+0xf7>
  wait(0);
     37c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     383:	e8 72 3c 00 00       	call   3ffa <wait>
  printf(stdout, "openiput test ok\n");
     388:	a1 34 65 00 00       	mov    0x6534,%eax
     38d:	c7 44 24 04 80 45 00 	movl   $0x4580,0x4(%esp)
     394:	00 
     395:	89 04 24             	mov    %eax,(%esp)
     398:	e8 b3 3d 00 00       	call   4150 <printf>
}
     39d:	c9                   	leave  
     39e:	c3                   	ret    
     39f:	90                   	nop
    exit(0);
     3a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3a7:	e8 46 3c 00 00       	call   3ff2 <exit>
    printf(stdout, "mkdir oidir failed\n");
     3ac:	c7 44 24 04 5d 45 00 	movl   $0x455d,0x4(%esp)
     3b3:	00 
    printf(stdout, "fork failed\n");
     3b4:	a1 34 65 00 00       	mov    0x6534,%eax
     3b9:	89 04 24             	mov    %eax,(%esp)
     3bc:	e8 8f 3d 00 00       	call   4150 <printf>
    exit(1);
     3c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3c8:	e8 25 3c 00 00       	call   3ff2 <exit>
    printf(stdout, "fork failed\n");
     3cd:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
     3d4:	00 
     3d5:	eb dd                	jmp    3b4 <openiputtest+0xd4>
    printf(stdout, "unlink failed\n");
     3d7:	c7 44 24 04 71 45 00 	movl   $0x4571,0x4(%esp)
     3de:	00 
     3df:	eb d3                	jmp    3b4 <openiputtest+0xd4>
     3e1:	eb 0d                	jmp    3f0 <opentest>
     3e3:	90                   	nop
     3e4:	90                   	nop
     3e5:	90                   	nop
     3e6:	90                   	nop
     3e7:	90                   	nop
     3e8:	90                   	nop
     3e9:	90                   	nop
     3ea:	90                   	nop
     3eb:	90                   	nop
     3ec:	90                   	nop
     3ed:	90                   	nop
     3ee:	90                   	nop
     3ef:	90                   	nop

000003f0 <opentest>:
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     3f6:	a1 34 65 00 00       	mov    0x6534,%eax
     3fb:	c7 44 24 04 92 45 00 	movl   $0x4592,0x4(%esp)
     402:	00 
     403:	89 04 24             	mov    %eax,(%esp)
     406:	e8 45 3d 00 00       	call   4150 <printf>
  fd = open("echo", 0);
     40b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     412:	00 
     413:	c7 04 24 9d 45 00 00 	movl   $0x459d,(%esp)
     41a:	e8 13 3c 00 00       	call   4032 <open>
  if(fd < 0){
     41f:	85 c0                	test   %eax,%eax
     421:	78 37                	js     45a <opentest+0x6a>
  close(fd);
     423:	89 04 24             	mov    %eax,(%esp)
     426:	e8 ef 3b 00 00       	call   401a <close>
  fd = open("doesnotexist", 0);
     42b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     432:	00 
     433:	c7 04 24 b5 45 00 00 	movl   $0x45b5,(%esp)
     43a:	e8 f3 3b 00 00       	call   4032 <open>
  if(fd >= 0){
     43f:	85 c0                	test   %eax,%eax
     441:	79 38                	jns    47b <opentest+0x8b>
  printf(stdout, "open test ok\n");
     443:	a1 34 65 00 00       	mov    0x6534,%eax
     448:	c7 44 24 04 e0 45 00 	movl   $0x45e0,0x4(%esp)
     44f:	00 
     450:	89 04 24             	mov    %eax,(%esp)
     453:	e8 f8 3c 00 00       	call   4150 <printf>
}
     458:	c9                   	leave  
     459:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     45a:	a1 34 65 00 00       	mov    0x6534,%eax
     45f:	c7 44 24 04 a2 45 00 	movl   $0x45a2,0x4(%esp)
     466:	00 
     467:	89 04 24             	mov    %eax,(%esp)
     46a:	e8 e1 3c 00 00       	call   4150 <printf>
    exit(1);
     46f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     476:	e8 77 3b 00 00       	call   3ff2 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     47b:	a1 34 65 00 00       	mov    0x6534,%eax
     480:	c7 44 24 04 c2 45 00 	movl   $0x45c2,0x4(%esp)
     487:	00 
     488:	89 04 24             	mov    %eax,(%esp)
     48b:	e8 c0 3c 00 00       	call   4150 <printf>
    exit(0);
     490:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     497:	e8 56 3b 00 00       	call   3ff2 <exit>
     49c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004a0 <writetest>:
{
     4a0:	55                   	push   %ebp
     4a1:	89 e5                	mov    %esp,%ebp
     4a3:	56                   	push   %esi
     4a4:	53                   	push   %ebx
     4a5:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     4a8:	a1 34 65 00 00       	mov    0x6534,%eax
     4ad:	c7 44 24 04 ee 45 00 	movl   $0x45ee,0x4(%esp)
     4b4:	00 
     4b5:	89 04 24             	mov    %eax,(%esp)
     4b8:	e8 93 3c 00 00       	call   4150 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4bd:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4c4:	00 
     4c5:	c7 04 24 ff 45 00 00 	movl   $0x45ff,(%esp)
     4cc:	e8 61 3b 00 00       	call   4032 <open>
  if(fd >= 0){
     4d1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4d3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4d5:	0f 88 8b 01 00 00    	js     666 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     4db:	a1 34 65 00 00       	mov    0x6534,%eax
  for(i = 0; i < 100; i++){
     4e0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4e2:	c7 44 24 04 05 46 00 	movl   $0x4605,0x4(%esp)
     4e9:	00 
     4ea:	89 04 24             	mov    %eax,(%esp)
     4ed:	e8 5e 3c 00 00       	call   4150 <printf>
     4f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4f8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4ff:	00 
     500:	c7 44 24 04 3c 46 00 	movl   $0x463c,0x4(%esp)
     507:	00 
     508:	89 34 24             	mov    %esi,(%esp)
     50b:	e8 02 3b 00 00       	call   4012 <write>
     510:	83 f8 0a             	cmp    $0xa,%eax
     513:	0f 85 e5 00 00 00    	jne    5fe <writetest+0x15e>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     519:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     520:	00 
     521:	c7 44 24 04 47 46 00 	movl   $0x4647,0x4(%esp)
     528:	00 
     529:	89 34 24             	mov    %esi,(%esp)
     52c:	e8 e1 3a 00 00       	call   4012 <write>
     531:	83 f8 0a             	cmp    $0xa,%eax
     534:	0f 85 e9 00 00 00    	jne    623 <writetest+0x183>
  for(i = 0; i < 100; i++){
     53a:	83 c3 01             	add    $0x1,%ebx
     53d:	83 fb 64             	cmp    $0x64,%ebx
     540:	75 b6                	jne    4f8 <writetest+0x58>
  printf(stdout, "writes ok\n");
     542:	a1 34 65 00 00       	mov    0x6534,%eax
     547:	c7 44 24 04 52 46 00 	movl   $0x4652,0x4(%esp)
     54e:	00 
     54f:	89 04 24             	mov    %eax,(%esp)
     552:	e8 f9 3b 00 00       	call   4150 <printf>
  close(fd);
     557:	89 34 24             	mov    %esi,(%esp)
     55a:	e8 bb 3a 00 00       	call   401a <close>
  fd = open("small", O_RDONLY);
     55f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     566:	00 
     567:	c7 04 24 ff 45 00 00 	movl   $0x45ff,(%esp)
     56e:	e8 bf 3a 00 00       	call   4032 <open>
  if(fd >= 0){
     573:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     575:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     577:	0f 88 b4 00 00 00    	js     631 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     57d:	a1 34 65 00 00       	mov    0x6534,%eax
     582:	c7 44 24 04 5d 46 00 	movl   $0x465d,0x4(%esp)
     589:	00 
     58a:	89 04 24             	mov    %eax,(%esp)
     58d:	e8 be 3b 00 00       	call   4150 <printf>
  i = read(fd, buf, 2000);
     592:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     599:	00 
     59a:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     5a1:	00 
     5a2:	89 1c 24             	mov    %ebx,(%esp)
     5a5:	e8 60 3a 00 00       	call   400a <read>
  if(i == 2000){
     5aa:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     5af:	0f 85 9d 00 00 00    	jne    652 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     5b5:	a1 34 65 00 00       	mov    0x6534,%eax
     5ba:	c7 44 24 04 91 46 00 	movl   $0x4691,0x4(%esp)
     5c1:	00 
     5c2:	89 04 24             	mov    %eax,(%esp)
     5c5:	e8 86 3b 00 00       	call   4150 <printf>
  close(fd);
     5ca:	89 1c 24             	mov    %ebx,(%esp)
     5cd:	e8 48 3a 00 00       	call   401a <close>
  if(unlink("small") < 0){
     5d2:	c7 04 24 ff 45 00 00 	movl   $0x45ff,(%esp)
     5d9:	e8 64 3a 00 00       	call   4042 <unlink>
     5de:	85 c0                	test   %eax,%eax
     5e0:	78 7a                	js     65c <writetest+0x1bc>
  printf(stdout, "small file test ok\n");
     5e2:	a1 34 65 00 00       	mov    0x6534,%eax
     5e7:	c7 44 24 04 b9 46 00 	movl   $0x46b9,0x4(%esp)
     5ee:	00 
     5ef:	89 04 24             	mov    %eax,(%esp)
     5f2:	e8 59 3b 00 00       	call   4150 <printf>
}
     5f7:	83 c4 10             	add    $0x10,%esp
     5fa:	5b                   	pop    %ebx
     5fb:	5e                   	pop    %esi
     5fc:	5d                   	pop    %ebp
     5fd:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     602:	c7 44 24 04 00 55 00 	movl   $0x5500,0x4(%esp)
     609:	00 
      printf(stdout, "error: write bb %d new file failed\n", i);
     60a:	a1 34 65 00 00       	mov    0x6534,%eax
     60f:	89 04 24             	mov    %eax,(%esp)
     612:	e8 39 3b 00 00       	call   4150 <printf>
      exit(1);
     617:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     61e:	e8 cf 39 00 00       	call   3ff2 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     623:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     627:	c7 44 24 04 24 55 00 	movl   $0x5524,0x4(%esp)
     62e:	00 
     62f:	eb d9                	jmp    60a <writetest+0x16a>
    printf(stdout, "error: open small failed!\n");
     631:	c7 44 24 04 76 46 00 	movl   $0x4676,0x4(%esp)
     638:	00 
     639:	a1 34 65 00 00       	mov    0x6534,%eax
     63e:	89 04 24             	mov    %eax,(%esp)
     641:	e8 0a 3b 00 00       	call   4150 <printf>
    exit(1);
     646:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     64d:	e8 a0 39 00 00       	call   3ff2 <exit>
    printf(stdout, "read failed\n");
     652:	c7 44 24 04 bd 49 00 	movl   $0x49bd,0x4(%esp)
     659:	00 
     65a:	eb dd                	jmp    639 <writetest+0x199>
    printf(stdout, "unlink small failed\n");
     65c:	c7 44 24 04 a4 46 00 	movl   $0x46a4,0x4(%esp)
     663:	00 
     664:	eb d3                	jmp    639 <writetest+0x199>
    printf(stdout, "error: creat small failed!\n");
     666:	c7 44 24 04 20 46 00 	movl   $0x4620,0x4(%esp)
     66d:	00 
     66e:	eb c9                	jmp    639 <writetest+0x199>

00000670 <writetest1>:
{
     670:	55                   	push   %ebp
     671:	89 e5                	mov    %esp,%ebp
     673:	56                   	push   %esi
     674:	53                   	push   %ebx
     675:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     678:	a1 34 65 00 00       	mov    0x6534,%eax
     67d:	c7 44 24 04 cd 46 00 	movl   $0x46cd,0x4(%esp)
     684:	00 
     685:	89 04 24             	mov    %eax,(%esp)
     688:	e8 c3 3a 00 00       	call   4150 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     68d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     694:	00 
     695:	c7 04 24 47 47 00 00 	movl   $0x4747,(%esp)
     69c:	e8 91 39 00 00       	call   4032 <open>
  if(fd < 0){
     6a1:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     6a3:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6a5:	0f 88 86 01 00 00    	js     831 <writetest1+0x1c1>
     6ab:	31 db                	xor    %ebx,%ebx
     6ad:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     6b0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     6b7:	00 
     6b8:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     6bf:	00 
     6c0:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     6c3:	89 1d 20 8d 00 00    	mov    %ebx,0x8d20
    if(write(fd, buf, 512) != 512){
     6c9:	e8 44 39 00 00       	call   4012 <write>
     6ce:	3d 00 02 00 00       	cmp    $0x200,%eax
     6d3:	0f 85 b2 00 00 00    	jne    78b <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     6d9:	83 c3 01             	add    $0x1,%ebx
     6dc:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6e2:	75 cc                	jne    6b0 <writetest1+0x40>
  close(fd);
     6e4:	89 34 24             	mov    %esi,(%esp)
     6e7:	e8 2e 39 00 00       	call   401a <close>
  fd = open("big", O_RDONLY);
     6ec:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6f3:	00 
     6f4:	c7 04 24 47 47 00 00 	movl   $0x4747,(%esp)
     6fb:	e8 32 39 00 00       	call   4032 <open>
  if(fd < 0){
     700:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     702:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     704:	0f 88 06 01 00 00    	js     810 <writetest1+0x1a0>
     70a:	31 db                	xor    %ebx,%ebx
     70c:	eb 1d                	jmp    72b <writetest1+0xbb>
     70e:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     710:	3d 00 02 00 00       	cmp    $0x200,%eax
     715:	0f 85 be 00 00 00    	jne    7d9 <writetest1+0x169>
    if(((int*)buf)[0] != n){
     71b:	a1 20 8d 00 00       	mov    0x8d20,%eax
     720:	39 d8                	cmp    %ebx,%eax
     722:	0f 85 88 00 00 00    	jne    7b0 <writetest1+0x140>
    n++;
     728:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     72b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     732:	00 
     733:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     73a:	00 
     73b:	89 34 24             	mov    %esi,(%esp)
     73e:	e8 c7 38 00 00       	call   400a <read>
    if(i == 0){
     743:	85 c0                	test   %eax,%eax
     745:	75 c9                	jne    710 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     747:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     74d:	0f 84 94 00 00 00    	je     7e7 <writetest1+0x177>
  close(fd);
     753:	89 34 24             	mov    %esi,(%esp)
     756:	e8 bf 38 00 00       	call   401a <close>
  if(unlink("big") < 0){
     75b:	c7 04 24 47 47 00 00 	movl   $0x4747,(%esp)
     762:	e8 db 38 00 00       	call   4042 <unlink>
     767:	85 c0                	test   %eax,%eax
     769:	0f 88 cc 00 00 00    	js     83b <writetest1+0x1cb>
  printf(stdout, "big files ok\n");
     76f:	a1 34 65 00 00       	mov    0x6534,%eax
     774:	c7 44 24 04 6e 47 00 	movl   $0x476e,0x4(%esp)
     77b:	00 
     77c:	89 04 24             	mov    %eax,(%esp)
     77f:	e8 cc 39 00 00       	call   4150 <printf>
}
     784:	83 c4 10             	add    $0x10,%esp
     787:	5b                   	pop    %ebx
     788:	5e                   	pop    %esi
     789:	5d                   	pop    %ebp
     78a:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     78b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     78f:	c7 44 24 04 f7 46 00 	movl   $0x46f7,0x4(%esp)
     796:	00 
      printf(stdout, "read failed %d\n", i);
     797:	a1 34 65 00 00       	mov    0x6534,%eax
     79c:	89 04 24             	mov    %eax,(%esp)
     79f:	e8 ac 39 00 00       	call   4150 <printf>
      exit(1);
     7a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     7ab:	e8 42 38 00 00       	call   3ff2 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7b0:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7b4:	a1 34 65 00 00       	mov    0x6534,%eax
     7b9:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7bd:	c7 44 24 04 48 55 00 	movl   $0x5548,0x4(%esp)
     7c4:	00 
     7c5:	89 04 24             	mov    %eax,(%esp)
     7c8:	e8 83 39 00 00       	call   4150 <printf>
      exit(0);
     7cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7d4:	e8 19 38 00 00       	call   3ff2 <exit>
      printf(stdout, "read failed %d\n", i);
     7d9:	89 44 24 08          	mov    %eax,0x8(%esp)
     7dd:	c7 44 24 04 4b 47 00 	movl   $0x474b,0x4(%esp)
     7e4:	00 
     7e5:	eb b0                	jmp    797 <writetest1+0x127>
        printf(stdout, "read only %d blocks from big", n);
     7e7:	a1 34 65 00 00       	mov    0x6534,%eax
     7ec:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7f3:	00 
     7f4:	c7 44 24 04 2e 47 00 	movl   $0x472e,0x4(%esp)
     7fb:	00 
     7fc:	89 04 24             	mov    %eax,(%esp)
     7ff:	e8 4c 39 00 00       	call   4150 <printf>
        exit(0);
     804:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     80b:	e8 e2 37 00 00       	call   3ff2 <exit>
    printf(stdout, "error: open big failed!\n");
     810:	c7 44 24 04 15 47 00 	movl   $0x4715,0x4(%esp)
     817:	00 
     818:	a1 34 65 00 00       	mov    0x6534,%eax
     81d:	89 04 24             	mov    %eax,(%esp)
     820:	e8 2b 39 00 00       	call   4150 <printf>
    exit(1);
     825:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     82c:	e8 c1 37 00 00       	call   3ff2 <exit>
    printf(stdout, "error: creat big failed!\n");
     831:	c7 44 24 04 dd 46 00 	movl   $0x46dd,0x4(%esp)
     838:	00 
     839:	eb dd                	jmp    818 <writetest1+0x1a8>
    printf(stdout, "unlink big failed\n");
     83b:	c7 44 24 04 5b 47 00 	movl   $0x475b,0x4(%esp)
     842:	00 
     843:	eb d3                	jmp    818 <writetest1+0x1a8>
     845:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     849:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000850 <createtest>:
{
     850:	55                   	push   %ebp
     851:	89 e5                	mov    %esp,%ebp
     853:	53                   	push   %ebx
  name[2] = '\0';
     854:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     859:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     85c:	a1 34 65 00 00       	mov    0x6534,%eax
     861:	c7 44 24 04 68 55 00 	movl   $0x5568,0x4(%esp)
     868:	00 
     869:	89 04 24             	mov    %eax,(%esp)
     86c:	e8 df 38 00 00       	call   4150 <printf>
  name[0] = 'a';
     871:	c6 05 20 ad 00 00 61 	movb   $0x61,0xad20
  name[2] = '\0';
     878:	c6 05 22 ad 00 00 00 	movb   $0x0,0xad22
     87f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     880:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     887:	00 
     888:	c7 04 24 20 ad 00 00 	movl   $0xad20,(%esp)
    name[1] = '0' + i;
     88f:	88 1d 21 ad 00 00    	mov    %bl,0xad21
     895:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     898:	e8 95 37 00 00       	call   4032 <open>
    close(fd);
     89d:	89 04 24             	mov    %eax,(%esp)
     8a0:	e8 75 37 00 00       	call   401a <close>
  for(i = 0; i < 52; i++){
     8a5:	80 fb 64             	cmp    $0x64,%bl
     8a8:	75 d6                	jne    880 <createtest+0x30>
  name[0] = 'a';
     8aa:	c6 05 20 ad 00 00 61 	movb   $0x61,0xad20
  name[2] = '\0';
     8b1:	bb 30 00 00 00       	mov    $0x30,%ebx
     8b6:	c6 05 22 ad 00 00 00 	movb   $0x0,0xad22
     8bd:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     8c0:	88 1d 21 ad 00 00    	mov    %bl,0xad21
     8c6:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8c9:	c7 04 24 20 ad 00 00 	movl   $0xad20,(%esp)
     8d0:	e8 6d 37 00 00       	call   4042 <unlink>
  for(i = 0; i < 52; i++){
     8d5:	80 fb 64             	cmp    $0x64,%bl
     8d8:	75 e6                	jne    8c0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8da:	a1 34 65 00 00       	mov    0x6534,%eax
     8df:	c7 44 24 04 90 55 00 	movl   $0x5590,0x4(%esp)
     8e6:	00 
     8e7:	89 04 24             	mov    %eax,(%esp)
     8ea:	e8 61 38 00 00       	call   4150 <printf>
}
     8ef:	83 c4 14             	add    $0x14,%esp
     8f2:	5b                   	pop    %ebx
     8f3:	5d                   	pop    %ebp
     8f4:	c3                   	ret    
     8f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000900 <dirtest>:
{
     900:	55                   	push   %ebp
     901:	89 e5                	mov    %esp,%ebp
     903:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     906:	a1 34 65 00 00       	mov    0x6534,%eax
     90b:	c7 44 24 04 7c 47 00 	movl   $0x477c,0x4(%esp)
     912:	00 
     913:	89 04 24             	mov    %eax,(%esp)
     916:	e8 35 38 00 00       	call   4150 <printf>
  if(mkdir("dir0") < 0){
     91b:	c7 04 24 88 47 00 00 	movl   $0x4788,(%esp)
     922:	e8 33 37 00 00       	call   405a <mkdir>
     927:	85 c0                	test   %eax,%eax
     929:	78 47                	js     972 <dirtest+0x72>
  if(chdir("dir0") < 0){
     92b:	c7 04 24 88 47 00 00 	movl   $0x4788,(%esp)
     932:	e8 2b 37 00 00       	call   4062 <chdir>
     937:	85 c0                	test   %eax,%eax
     939:	78 6c                	js     9a7 <dirtest+0xa7>
  if(chdir("..") < 0){
     93b:	c7 04 24 2d 4d 00 00 	movl   $0x4d2d,(%esp)
     942:	e8 1b 37 00 00       	call   4062 <chdir>
     947:	85 c0                	test   %eax,%eax
     949:	78 52                	js     99d <dirtest+0x9d>
  if(unlink("dir0") < 0){
     94b:	c7 04 24 88 47 00 00 	movl   $0x4788,(%esp)
     952:	e8 eb 36 00 00       	call   4042 <unlink>
     957:	85 c0                	test   %eax,%eax
     959:	78 38                	js     993 <dirtest+0x93>
  printf(stdout, "mkdir test ok\n");
     95b:	a1 34 65 00 00       	mov    0x6534,%eax
     960:	c7 44 24 04 c5 47 00 	movl   $0x47c5,0x4(%esp)
     967:	00 
     968:	89 04 24             	mov    %eax,(%esp)
     96b:	e8 e0 37 00 00       	call   4150 <printf>
}
     970:	c9                   	leave  
     971:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     972:	c7 44 24 04 b8 44 00 	movl   $0x44b8,0x4(%esp)
     979:	00 
    printf(stdout, "chdir dir0 failed\n");
     97a:	a1 34 65 00 00       	mov    0x6534,%eax
     97f:	89 04 24             	mov    %eax,(%esp)
     982:	e8 c9 37 00 00       	call   4150 <printf>
    exit(1);
     987:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     98e:	e8 5f 36 00 00       	call   3ff2 <exit>
    printf(stdout, "unlink dir0 failed\n");
     993:	c7 44 24 04 b1 47 00 	movl   $0x47b1,0x4(%esp)
     99a:	00 
     99b:	eb dd                	jmp    97a <dirtest+0x7a>
    printf(stdout, "chdir .. failed\n");
     99d:	c7 44 24 04 a0 47 00 	movl   $0x47a0,0x4(%esp)
     9a4:	00 
     9a5:	eb d3                	jmp    97a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
     9a7:	c7 44 24 04 8d 47 00 	movl   $0x478d,0x4(%esp)
     9ae:	00 
     9af:	eb c9                	jmp    97a <dirtest+0x7a>
     9b1:	eb 0d                	jmp    9c0 <exectest>
     9b3:	90                   	nop
     9b4:	90                   	nop
     9b5:	90                   	nop
     9b6:	90                   	nop
     9b7:	90                   	nop
     9b8:	90                   	nop
     9b9:	90                   	nop
     9ba:	90                   	nop
     9bb:	90                   	nop
     9bc:	90                   	nop
     9bd:	90                   	nop
     9be:	90                   	nop
     9bf:	90                   	nop

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     9c6:	a1 34 65 00 00       	mov    0x6534,%eax
     9cb:	c7 44 24 04 d4 47 00 	movl   $0x47d4,0x4(%esp)
     9d2:	00 
     9d3:	89 04 24             	mov    %eax,(%esp)
     9d6:	e8 75 37 00 00       	call   4150 <printf>
  if(exec("echo", echoargv) < 0){
     9db:	c7 44 24 04 38 65 00 	movl   $0x6538,0x4(%esp)
     9e2:	00 
     9e3:	c7 04 24 9d 45 00 00 	movl   $0x459d,(%esp)
     9ea:	e8 3b 36 00 00       	call   402a <exec>
     9ef:	85 c0                	test   %eax,%eax
     9f1:	78 02                	js     9f5 <exectest+0x35>
}
     9f3:	c9                   	leave  
     9f4:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     9f5:	a1 34 65 00 00       	mov    0x6534,%eax
     9fa:	c7 44 24 04 df 47 00 	movl   $0x47df,0x4(%esp)
     a01:	00 
     a02:	89 04 24             	mov    %eax,(%esp)
     a05:	e8 46 37 00 00       	call   4150 <printf>
    exit(1);
     a0a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a11:	e8 dc 35 00 00       	call   3ff2 <exit>
     a16:	8d 76 00             	lea    0x0(%esi),%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <pipe1>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     a29:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a2c:	89 04 24             	mov    %eax,(%esp)
     a2f:	e8 ce 35 00 00       	call   4002 <pipe>
     a34:	85 c0                	test   %eax,%eax
     a36:	0f 85 5c 01 00 00    	jne    b98 <pipe1+0x178>
  pid = fork();
     a3c:	e8 a9 35 00 00       	call   3fea <fork>
  if(pid == 0){
     a41:	83 f8 00             	cmp    $0x0,%eax
     a44:	0f 84 93 00 00 00    	je     add <pipe1+0xbd>
  } else if(pid > 0){
     a4a:	0f 8e 68 01 00 00    	jle    bb8 <pipe1+0x198>
    close(fds[1]);
     a50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     a53:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     a58:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     a5a:	89 04 24             	mov    %eax,(%esp)
     a5d:	e8 b8 35 00 00       	call   401a <close>
    total = 0;
     a62:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a69:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a6c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a70:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     a77:	00 
     a78:	89 04 24             	mov    %eax,(%esp)
     a7b:	e8 8a 35 00 00       	call   400a <read>
     a80:	85 c0                	test   %eax,%eax
     a82:	0f 8e ba 00 00 00    	jle    b42 <pipe1+0x122>
     a88:	89 d9                	mov    %ebx,%ecx
     a8a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a8d:	f7 d9                	neg    %ecx
     a8f:	eb 09                	jmp    a9a <pipe1+0x7a>
     a91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a98:	89 d3                	mov    %edx,%ebx
     a9a:	38 9c 0b 20 8d 00 00 	cmp    %bl,0x8d20(%ebx,%ecx,1)
     aa1:	8d 53 01             	lea    0x1(%ebx),%edx
     aa4:	75 1b                	jne    ac1 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     aa6:	39 f2                	cmp    %esi,%edx
     aa8:	75 ee                	jne    a98 <pipe1+0x78>
      cc = cc * 2;
     aaa:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     aac:	89 f3                	mov    %esi,%ebx
      total += n;
     aae:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     ab1:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     ab7:	b8 00 20 00 00       	mov    $0x2000,%eax
     abc:	0f 43 f8             	cmovae %eax,%edi
     abf:	eb a8                	jmp    a69 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     ac1:	c7 44 24 04 0e 48 00 	movl   $0x480e,0x4(%esp)
     ac8:	00 
     ac9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ad0:	e8 7b 36 00 00       	call   4150 <printf>
}
     ad5:	83 c4 2c             	add    $0x2c,%esp
     ad8:	5b                   	pop    %ebx
     ad9:	5e                   	pop    %esi
     ada:	5f                   	pop    %edi
     adb:	5d                   	pop    %ebp
     adc:	c3                   	ret    
    close(fds[0]);
     add:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     ae0:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     ae2:	89 04 24             	mov    %eax,(%esp)
     ae5:	e8 30 35 00 00       	call   401a <close>
     aea:	89 f0                	mov    %esi,%eax
{
     aec:	89 f3                	mov    %esi,%ebx
     aee:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     af4:	f7 d8                	neg    %eax
     af6:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     af8:	88 9c 18 20 8d 00 00 	mov    %bl,0x8d20(%eax,%ebx,1)
     aff:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     b02:	39 d3                	cmp    %edx,%ebx
     b04:	75 f2                	jne    af8 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     b06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     b09:	89 de                	mov    %ebx,%esi
     b0b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     b12:	00 
     b13:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     b1a:	00 
     b1b:	89 04 24             	mov    %eax,(%esp)
     b1e:	e8 ef 34 00 00       	call   4012 <write>
     b23:	3d 09 04 00 00       	cmp    $0x409,%eax
     b28:	0f 85 aa 00 00 00    	jne    bd8 <pipe1+0x1b8>
    for(n = 0; n < 5; n++){
     b2e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b34:	75 b4                	jne    aea <pipe1+0xca>
      exit(1);
     b36:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b3d:	e8 b0 34 00 00       	call   3ff2 <exit>
    if(total != 5 * 1033){
     b42:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b49:	75 30                	jne    b7b <pipe1+0x15b>
    close(fds[0]);
     b4b:	8b 45 e0             	mov    -0x20(%ebp),%eax
     b4e:	89 04 24             	mov    %eax,(%esp)
     b51:	e8 c4 34 00 00       	call   401a <close>
    wait(0);
     b56:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b5d:	e8 98 34 00 00       	call   3ffa <wait>
  printf(1, "pipe1 ok\n");
     b62:	c7 44 24 04 33 48 00 	movl   $0x4833,0x4(%esp)
     b69:	00 
     b6a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b71:	e8 da 35 00 00       	call   4150 <printf>
     b76:	e9 5a ff ff ff       	jmp    ad5 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b7b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b7e:	c7 44 24 04 1c 48 00 	movl   $0x481c,0x4(%esp)
     b85:	00 
     b86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b8d:	89 44 24 08          	mov    %eax,0x8(%esp)
     b91:	e8 ba 35 00 00       	call   4150 <printf>
     b96:	eb 9e                	jmp    b36 <pipe1+0x116>
    printf(1, "pipe() failed\n");
     b98:	c7 44 24 04 f1 47 00 	movl   $0x47f1,0x4(%esp)
     b9f:	00 
     ba0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ba7:	e8 a4 35 00 00       	call   4150 <printf>
    exit(1);
     bac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bb3:	e8 3a 34 00 00       	call   3ff2 <exit>
    printf(1, "fork() failed\n");
     bb8:	c7 44 24 04 3d 48 00 	movl   $0x483d,0x4(%esp)
     bbf:	00 
     bc0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bc7:	e8 84 35 00 00       	call   4150 <printf>
    exit(1);
     bcc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bd3:	e8 1a 34 00 00       	call   3ff2 <exit>
        printf(1, "pipe1 oops 1\n");
     bd8:	c7 44 24 04 00 48 00 	movl   $0x4800,0x4(%esp)
     bdf:	00 
     be0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     be7:	e8 64 35 00 00       	call   4150 <printf>
        exit(1);
     bec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bf3:	e8 fa 33 00 00       	call   3ff2 <exit>
     bf8:	90                   	nop
     bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000c00 <preempt>:
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	57                   	push   %edi
     c04:	56                   	push   %esi
     c05:	53                   	push   %ebx
     c06:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     c09:	c7 44 24 04 4c 48 00 	movl   $0x484c,0x4(%esp)
     c10:	00 
     c11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c18:	e8 33 35 00 00       	call   4150 <printf>
  pid1 = fork();
     c1d:	e8 c8 33 00 00       	call   3fea <fork>
  if(pid1 == 0)
     c22:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c24:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c26:	75 02                	jne    c2a <preempt+0x2a>
     c28:	eb fe                	jmp    c28 <preempt+0x28>
     c2a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c30:	e8 b5 33 00 00       	call   3fea <fork>
  if(pid2 == 0)
     c35:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c37:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c39:	75 02                	jne    c3d <preempt+0x3d>
     c3b:	eb fe                	jmp    c3b <preempt+0x3b>
  pipe(pfds);
     c3d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c40:	89 04 24             	mov    %eax,(%esp)
     c43:	e8 ba 33 00 00       	call   4002 <pipe>
  pid3 = fork();
     c48:	e8 9d 33 00 00       	call   3fea <fork>
  if(pid3 == 0){
     c4d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c4f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c51:	75 4c                	jne    c9f <preempt+0x9f>
    close(pfds[0]);
     c53:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c56:	89 04 24             	mov    %eax,(%esp)
     c59:	e8 bc 33 00 00       	call   401a <close>
    if(write(pfds[1], "x", 1) != 1)
     c5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c61:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c68:	00 
     c69:	c7 44 24 04 11 4e 00 	movl   $0x4e11,0x4(%esp)
     c70:	00 
     c71:	89 04 24             	mov    %eax,(%esp)
     c74:	e8 99 33 00 00       	call   4012 <write>
     c79:	83 f8 01             	cmp    $0x1,%eax
     c7c:	74 14                	je     c92 <preempt+0x92>
      printf(1, "preempt write error");
     c7e:	c7 44 24 04 56 48 00 	movl   $0x4856,0x4(%esp)
     c85:	00 
     c86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c8d:	e8 be 34 00 00       	call   4150 <printf>
    close(pfds[1]);
     c92:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c95:	89 04 24             	mov    %eax,(%esp)
     c98:	e8 7d 33 00 00       	call   401a <close>
     c9d:	eb fe                	jmp    c9d <preempt+0x9d>
  close(pfds[1]);
     c9f:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ca2:	89 04 24             	mov    %eax,(%esp)
     ca5:	e8 70 33 00 00       	call   401a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     caa:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cad:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     cb4:	00 
     cb5:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
     cbc:	00 
     cbd:	89 04 24             	mov    %eax,(%esp)
     cc0:	e8 45 33 00 00       	call   400a <read>
     cc5:	83 f8 01             	cmp    $0x1,%eax
     cc8:	74 1c                	je     ce6 <preempt+0xe6>
    printf(1, "preempt read error");
     cca:	c7 44 24 04 6a 48 00 	movl   $0x486a,0x4(%esp)
     cd1:	00 
     cd2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cd9:	e8 72 34 00 00       	call   4150 <printf>
}
     cde:	83 c4 2c             	add    $0x2c,%esp
     ce1:	5b                   	pop    %ebx
     ce2:	5e                   	pop    %esi
     ce3:	5f                   	pop    %edi
     ce4:	5d                   	pop    %ebp
     ce5:	c3                   	ret    
  close(pfds[0]);
     ce6:	8b 45 e0             	mov    -0x20(%ebp),%eax
     ce9:	89 04 24             	mov    %eax,(%esp)
     cec:	e8 29 33 00 00       	call   401a <close>
  printf(1, "kill... ");
     cf1:	c7 44 24 04 7d 48 00 	movl   $0x487d,0x4(%esp)
     cf8:	00 
     cf9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d00:	e8 4b 34 00 00       	call   4150 <printf>
  kill(pid1);
     d05:	89 3c 24             	mov    %edi,(%esp)
     d08:	e8 15 33 00 00       	call   4022 <kill>
  kill(pid2);
     d0d:	89 34 24             	mov    %esi,(%esp)
     d10:	e8 0d 33 00 00       	call   4022 <kill>
  kill(pid3);
     d15:	89 1c 24             	mov    %ebx,(%esp)
     d18:	e8 05 33 00 00       	call   4022 <kill>
  printf(1, "wait... ");
     d1d:	c7 44 24 04 86 48 00 	movl   $0x4886,0x4(%esp)
     d24:	00 
     d25:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d2c:	e8 1f 34 00 00       	call   4150 <printf>
  wait(0);
     d31:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d38:	e8 bd 32 00 00       	call   3ffa <wait>
  wait(0);
     d3d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d44:	e8 b1 32 00 00       	call   3ffa <wait>
  wait(0);
     d49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d50:	e8 a5 32 00 00       	call   3ffa <wait>
  printf(1, "preempt ok\n");
     d55:	c7 44 24 04 8f 48 00 	movl   $0x488f,0x4(%esp)
     d5c:	00 
     d5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d64:	e8 e7 33 00 00       	call   4150 <printf>
     d69:	e9 70 ff ff ff       	jmp    cde <preempt+0xde>
     d6e:	66 90                	xchg   %ax,%ax

00000d70 <exitwait>:
{
     d70:	55                   	push   %ebp
     d71:	89 e5                	mov    %esp,%ebp
     d73:	56                   	push   %esi
     d74:	be 64 00 00 00       	mov    $0x64,%esi
     d79:	53                   	push   %ebx
     d7a:	83 ec 10             	sub    $0x10,%esp
     d7d:	eb 18                	jmp    d97 <exitwait+0x27>
     d7f:	90                   	nop
      if(wait(0) != pid){
     d80:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if(pid){
     d87:	74 72                	je     dfb <exitwait+0x8b>
      if(wait(0) != pid){
     d89:	e8 6c 32 00 00       	call   3ffa <wait>
     d8e:	39 d8                	cmp    %ebx,%eax
     d90:	75 2e                	jne    dc0 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     d92:	83 ee 01             	sub    $0x1,%esi
     d95:	74 49                	je     de0 <exitwait+0x70>
    pid = fork();
     d97:	e8 4e 32 00 00       	call   3fea <fork>
    if(pid < 0){
     d9c:	85 c0                	test   %eax,%eax
    pid = fork();
     d9e:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     da0:	79 de                	jns    d80 <exitwait+0x10>
      printf(1, "fork failed\n");
     da2:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
     da9:	00 
     daa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     db1:	e8 9a 33 00 00       	call   4150 <printf>
}
     db6:	83 c4 10             	add    $0x10,%esp
     db9:	5b                   	pop    %ebx
     dba:	5e                   	pop    %esi
     dbb:	5d                   	pop    %ebp
     dbc:	c3                   	ret    
     dbd:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
     dc0:	c7 44 24 04 9b 48 00 	movl   $0x489b,0x4(%esp)
     dc7:	00 
     dc8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dcf:	e8 7c 33 00 00       	call   4150 <printf>
}
     dd4:	83 c4 10             	add    $0x10,%esp
     dd7:	5b                   	pop    %ebx
     dd8:	5e                   	pop    %esi
     dd9:	5d                   	pop    %ebp
     dda:	c3                   	ret    
     ddb:	90                   	nop
     ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     de0:	c7 44 24 04 ab 48 00 	movl   $0x48ab,0x4(%esp)
     de7:	00 
     de8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     def:	e8 5c 33 00 00       	call   4150 <printf>
}
     df4:	83 c4 10             	add    $0x10,%esp
     df7:	5b                   	pop    %ebx
     df8:	5e                   	pop    %esi
     df9:	5d                   	pop    %ebp
     dfa:	c3                   	ret    
      exit(0);
     dfb:	e8 f2 31 00 00       	call   3ff2 <exit>

00000e00 <mem>:
{
     e00:	55                   	push   %ebp
     e01:	89 e5                	mov    %esp,%ebp
     e03:	57                   	push   %edi
     e04:	56                   	push   %esi
     e05:	53                   	push   %ebx
     e06:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     e09:	c7 44 24 04 b8 48 00 	movl   $0x48b8,0x4(%esp)
     e10:	00 
     e11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e18:	e8 33 33 00 00       	call   4150 <printf>
  ppid = getpid();
     e1d:	e8 50 32 00 00       	call   4072 <getpid>
     e22:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e24:	e8 c1 31 00 00       	call   3fea <fork>
     e29:	85 c0                	test   %eax,%eax
     e2b:	75 73                	jne    ea0 <mem+0xa0>
     e2d:	31 db                	xor    %ebx,%ebx
     e2f:	90                   	nop
     e30:	eb 0a                	jmp    e3c <mem+0x3c>
     e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e38:	89 18                	mov    %ebx,(%eax)
     e3a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e3c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e43:	e8 88 35 00 00       	call   43d0 <malloc>
     e48:	85 c0                	test   %eax,%eax
     e4a:	75 ec                	jne    e38 <mem+0x38>
    while(m1){
     e4c:	85 db                	test   %ebx,%ebx
     e4e:	75 0a                	jne    e5a <mem+0x5a>
     e50:	eb 16                	jmp    e68 <mem+0x68>
     e52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     e58:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     e5a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e5c:	89 1c 24             	mov    %ebx,(%esp)
     e5f:	e8 dc 34 00 00       	call   4340 <free>
    while(m1){
     e64:	85 ff                	test   %edi,%edi
     e66:	75 f0                	jne    e58 <mem+0x58>
    m1 = malloc(1024*20);
     e68:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e6f:	e8 5c 35 00 00       	call   43d0 <malloc>
    if(m1 == 0){
     e74:	85 c0                	test   %eax,%eax
     e76:	74 40                	je     eb8 <mem+0xb8>
    free(m1);
     e78:	89 04 24             	mov    %eax,(%esp)
     e7b:	e8 c0 34 00 00       	call   4340 <free>
    printf(1, "mem ok\n");
     e80:	c7 44 24 04 dc 48 00 	movl   $0x48dc,0x4(%esp)
     e87:	00 
     e88:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e8f:	e8 bc 32 00 00       	call   4150 <printf>
    exit(0);
     e94:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e9b:	e8 52 31 00 00       	call   3ff2 <exit>
    wait(0);
     ea0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     ea7:	e8 4e 31 00 00       	call   3ffa <wait>
}
     eac:	83 c4 1c             	add    $0x1c,%esp
     eaf:	5b                   	pop    %ebx
     eb0:	5e                   	pop    %esi
     eb1:	5f                   	pop    %edi
     eb2:	5d                   	pop    %ebp
     eb3:	c3                   	ret    
     eb4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     eb8:	c7 44 24 04 c2 48 00 	movl   $0x48c2,0x4(%esp)
     ebf:	00 
     ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ec7:	e8 84 32 00 00       	call   4150 <printf>
      kill(ppid);
     ecc:	89 34 24             	mov    %esi,(%esp)
     ecf:	e8 4e 31 00 00       	call   4022 <kill>
      exit(1);
     ed4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     edb:	e8 12 31 00 00       	call   3ff2 <exit>

00000ee0 <sharedfd>:
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	57                   	push   %edi
     ee4:	56                   	push   %esi
     ee5:	53                   	push   %ebx
     ee6:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     ee9:	c7 44 24 04 e4 48 00 	movl   $0x48e4,0x4(%esp)
     ef0:	00 
     ef1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ef8:	e8 53 32 00 00       	call   4150 <printf>
  unlink("sharedfd");
     efd:	c7 04 24 f3 48 00 00 	movl   $0x48f3,(%esp)
     f04:	e8 39 31 00 00       	call   4042 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f09:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     f10:	00 
     f11:	c7 04 24 f3 48 00 00 	movl   $0x48f3,(%esp)
     f18:	e8 15 31 00 00       	call   4032 <open>
  if(fd < 0){
     f1d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f1f:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f21:	0f 88 48 01 00 00    	js     106f <sharedfd+0x18f>
  pid = fork();
     f27:	e8 be 30 00 00       	call   3fea <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f2c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f2f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f34:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f3b:	00 
     f3c:	89 34 24             	mov    %esi,(%esp)
     f3f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f42:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f45:	19 c0                	sbb    %eax,%eax
     f47:	83 e0 f3             	and    $0xfffffff3,%eax
     f4a:	83 c0 70             	add    $0x70,%eax
     f4d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f51:	e8 2a 2f 00 00       	call   3e80 <memset>
     f56:	eb 05                	jmp    f5d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f58:	83 eb 01             	sub    $0x1,%ebx
     f5b:	74 2d                	je     f8a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f5d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f64:	00 
     f65:	89 74 24 04          	mov    %esi,0x4(%esp)
     f69:	89 3c 24             	mov    %edi,(%esp)
     f6c:	e8 a1 30 00 00       	call   4012 <write>
     f71:	83 f8 0a             	cmp    $0xa,%eax
     f74:	74 e2                	je     f58 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f76:	c7 44 24 04 e4 55 00 	movl   $0x55e4,0x4(%esp)
     f7d:	00 
     f7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f85:	e8 c6 31 00 00       	call   4150 <printf>
  if(pid == 0)
     f8a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    exit(0);
     f8d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
     f94:	85 c0                	test   %eax,%eax
     f96:	0f 84 2e 01 00 00    	je     10ca <sharedfd+0x1ea>
    wait(0);
     f9c:	e8 59 30 00 00       	call   3ffa <wait>
  close(fd);
     fa1:	89 3c 24             	mov    %edi,(%esp)
     fa4:	e8 71 30 00 00       	call   401a <close>
  fd = open("sharedfd", 0);
     fa9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     fb0:	00 
     fb1:	c7 04 24 f3 48 00 00 	movl   $0x48f3,(%esp)
     fb8:	e8 75 30 00 00       	call   4032 <open>
  if(fd < 0){
     fbd:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     fbf:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     fc2:	0f 88 c3 00 00 00    	js     108b <sharedfd+0x1ab>
     fc8:	31 d2                	xor    %edx,%edx
     fca:	31 db                	xor    %ebx,%ebx
     fcc:	8d 7d e8             	lea    -0x18(%ebp),%edi
     fcf:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     fd2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     fd8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     fdb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     fe2:	00 
     fe3:	89 74 24 04          	mov    %esi,0x4(%esp)
     fe7:	89 04 24             	mov    %eax,(%esp)
     fea:	e8 1b 30 00 00       	call   400a <read>
     fef:	85 c0                	test   %eax,%eax
     ff1:	7e 36                	jle    1029 <sharedfd+0x149>
     ff3:	89 f0                	mov    %esi,%eax
     ff5:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     ff8:	eb 18                	jmp    1012 <sharedfd+0x132>
     ffa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
    1000:	80 f9 70             	cmp    $0x70,%cl
    1003:	0f 94 c1             	sete   %cl
    1006:	83 c0 01             	add    $0x1,%eax
    1009:	0f b6 c9             	movzbl %cl,%ecx
    100c:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    100e:	39 f8                	cmp    %edi,%eax
    1010:	74 12                	je     1024 <sharedfd+0x144>
      if(buf[i] == 'c')
    1012:	0f b6 08             	movzbl (%eax),%ecx
    1015:	80 f9 63             	cmp    $0x63,%cl
    1018:	75 e6                	jne    1000 <sharedfd+0x120>
    101a:	83 c0 01             	add    $0x1,%eax
        nc++;
    101d:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    1020:	39 f8                	cmp    %edi,%eax
    1022:	75 ee                	jne    1012 <sharedfd+0x132>
    1024:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1027:	eb af                	jmp    fd8 <sharedfd+0xf8>
  close(fd);
    1029:	8b 45 d0             	mov    -0x30(%ebp),%eax
    102c:	89 04 24             	mov    %eax,(%esp)
    102f:	e8 e6 2f 00 00       	call   401a <close>
  unlink("sharedfd");
    1034:	c7 04 24 f3 48 00 00 	movl   $0x48f3,(%esp)
    103b:	e8 02 30 00 00       	call   4042 <unlink>
  if(nc == 10000 && np == 10000){
    1040:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1046:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1049:	75 5c                	jne    10a7 <sharedfd+0x1c7>
    104b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1051:	75 54                	jne    10a7 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    1053:	c7 44 24 04 fc 48 00 	movl   $0x48fc,0x4(%esp)
    105a:	00 
    105b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1062:	e8 e9 30 00 00       	call   4150 <printf>
}
    1067:	83 c4 3c             	add    $0x3c,%esp
    106a:	5b                   	pop    %ebx
    106b:	5e                   	pop    %esi
    106c:	5f                   	pop    %edi
    106d:	5d                   	pop    %ebp
    106e:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    106f:	c7 44 24 04 b8 55 00 	movl   $0x55b8,0x4(%esp)
    1076:	00 
    1077:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    107e:	e8 cd 30 00 00       	call   4150 <printf>
}
    1083:	83 c4 3c             	add    $0x3c,%esp
    1086:	5b                   	pop    %ebx
    1087:	5e                   	pop    %esi
    1088:	5f                   	pop    %edi
    1089:	5d                   	pop    %ebp
    108a:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    108b:	c7 44 24 04 04 56 00 	movl   $0x5604,0x4(%esp)
    1092:	00 
    1093:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    109a:	e8 b1 30 00 00       	call   4150 <printf>
}
    109f:	83 c4 3c             	add    $0x3c,%esp
    10a2:	5b                   	pop    %ebx
    10a3:	5e                   	pop    %esi
    10a4:	5f                   	pop    %edi
    10a5:	5d                   	pop    %ebp
    10a6:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    10a7:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    10ab:	89 54 24 08          	mov    %edx,0x8(%esp)
    10af:	c7 44 24 04 09 49 00 	movl   $0x4909,0x4(%esp)
    10b6:	00 
    10b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10be:	e8 8d 30 00 00       	call   4150 <printf>
    exit(1);
    10c3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10ca:	e8 23 2f 00 00       	call   3ff2 <exit>
    10cf:	90                   	nop

000010d0 <fourfiles>:
{
    10d0:	55                   	push   %ebp
    10d1:	89 e5                	mov    %esp,%ebp
    10d3:	57                   	push   %edi
    10d4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    10d5:	be 1e 49 00 00       	mov    $0x491e,%esi
{
    10da:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    10db:	31 db                	xor    %ebx,%ebx
{
    10dd:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    10e0:	c7 44 24 04 24 49 00 	movl   $0x4924,0x4(%esp)
    10e7:	00 
    10e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    10ef:	c7 45 d8 1e 49 00 00 	movl   $0x491e,-0x28(%ebp)
    10f6:	c7 45 dc 67 4a 00 00 	movl   $0x4a67,-0x24(%ebp)
    10fd:	c7 45 e0 6b 4a 00 00 	movl   $0x4a6b,-0x20(%ebp)
    1104:	c7 45 e4 21 49 00 00 	movl   $0x4921,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    110b:	e8 40 30 00 00       	call   4150 <printf>
    unlink(fname);
    1110:	89 34 24             	mov    %esi,(%esp)
    1113:	e8 2a 2f 00 00       	call   4042 <unlink>
    pid = fork();
    1118:	e8 cd 2e 00 00       	call   3fea <fork>
    if(pid < 0){
    111d:	85 c0                	test   %eax,%eax
    111f:	0f 88 bb 01 00 00    	js     12e0 <fourfiles+0x210>
    if(pid == 0){
    1125:	0f 84 0b 01 00 00    	je     1236 <fourfiles+0x166>
  for(pi = 0; pi < 4; pi++){
    112b:	83 c3 01             	add    $0x1,%ebx
    112e:	83 fb 04             	cmp    $0x4,%ebx
    1131:	74 06                	je     1139 <fourfiles+0x69>
    1133:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1137:	eb d7                	jmp    1110 <fourfiles+0x40>
    wait(0);
    1139:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1140:	bf 30 00 00 00       	mov    $0x30,%edi
    1145:	e8 b0 2e 00 00       	call   3ffa <wait>
    114a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1151:	e8 a4 2e 00 00       	call   3ffa <wait>
    1156:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    115d:	e8 98 2e 00 00       	call   3ffa <wait>
    1162:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1169:	e8 8c 2e 00 00       	call   3ffa <wait>
    116e:	c7 45 d4 1e 49 00 00 	movl   $0x491e,-0x2c(%ebp)
    fd = open(fname, 0);
    1175:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    1178:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    117a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1181:	00 
    1182:	89 04 24             	mov    %eax,(%esp)
    1185:	e8 a8 2e 00 00       	call   4032 <open>
    118a:	89 c6                	mov    %eax,%esi
    118c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1190:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1197:	00 
    1198:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    119f:	00 
    11a0:	89 34 24             	mov    %esi,(%esp)
    11a3:	e8 62 2e 00 00       	call   400a <read>
    11a8:	85 c0                	test   %eax,%eax
    11aa:	7e 1a                	jle    11c6 <fourfiles+0xf6>
    11ac:	31 d2                	xor    %edx,%edx
    11ae:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    11b0:	0f be 8a 20 8d 00 00 	movsbl 0x8d20(%edx),%ecx
    11b7:	39 f9                	cmp    %edi,%ecx
    11b9:	75 5b                	jne    1216 <fourfiles+0x146>
      for(j = 0; j < n; j++){
    11bb:	83 c2 01             	add    $0x1,%edx
    11be:	39 c2                	cmp    %eax,%edx
    11c0:	75 ee                	jne    11b0 <fourfiles+0xe0>
      total += n;
    11c2:	01 d3                	add    %edx,%ebx
    11c4:	eb ca                	jmp    1190 <fourfiles+0xc0>
    close(fd);
    11c6:	89 34 24             	mov    %esi,(%esp)
    11c9:	e8 4c 2e 00 00       	call   401a <close>
    if(total != 12*500){
    11ce:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    11d4:	0f 85 26 01 00 00    	jne    1300 <fourfiles+0x230>
    unlink(fname);
    11da:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11dd:	89 04 24             	mov    %eax,(%esp)
    11e0:	e8 5d 2e 00 00       	call   4042 <unlink>
  for(i = 0; i < 2; i++){
    11e5:	83 ff 31             	cmp    $0x31,%edi
    11e8:	75 1c                	jne    1206 <fourfiles+0x136>
  printf(1, "fourfiles ok\n");
    11ea:	c7 44 24 04 62 49 00 	movl   $0x4962,0x4(%esp)
    11f1:	00 
    11f2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    11f9:	e8 52 2f 00 00       	call   4150 <printf>
}
    11fe:	83 c4 2c             	add    $0x2c,%esp
    1201:	5b                   	pop    %ebx
    1202:	5e                   	pop    %esi
    1203:	5f                   	pop    %edi
    1204:	5d                   	pop    %ebp
    1205:	c3                   	ret    
    1206:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1209:	bf 31 00 00 00       	mov    $0x31,%edi
    120e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1211:	e9 5f ff ff ff       	jmp    1175 <fourfiles+0xa5>
          printf(1, "wrong char\n");
    1216:	c7 44 24 04 45 49 00 	movl   $0x4945,0x4(%esp)
    121d:	00 
    121e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1225:	e8 26 2f 00 00       	call   4150 <printf>
          exit(1);
    122a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1231:	e8 bc 2d 00 00       	call   3ff2 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1236:	89 34 24             	mov    %esi,(%esp)
    1239:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1240:	00 
    1241:	e8 ec 2d 00 00       	call   4032 <open>
      if(fd < 0){
    1246:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1248:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    124a:	78 74                	js     12c0 <fourfiles+0x1f0>
      memset(buf, '0'+pi, 512);
    124c:	83 c3 30             	add    $0x30,%ebx
    124f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1253:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1258:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    125f:	00 
    1260:	c7 04 24 20 8d 00 00 	movl   $0x8d20,(%esp)
    1267:	e8 14 2c 00 00       	call   3e80 <memset>
        if((n = write(fd, buf, 500)) != 500){
    126c:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1273:	00 
    1274:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    127b:	00 
    127c:	89 34 24             	mov    %esi,(%esp)
    127f:	e8 8e 2d 00 00       	call   4012 <write>
    1284:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1289:	75 11                	jne    129c <fourfiles+0x1cc>
      for(i = 0; i < 12; i++){
    128b:	83 eb 01             	sub    $0x1,%ebx
    128e:	75 dc                	jne    126c <fourfiles+0x19c>
      exit(0);
    1290:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1297:	e8 56 2d 00 00       	call   3ff2 <exit>
          printf(1, "write failed %d\n", n);
    129c:	89 44 24 08          	mov    %eax,0x8(%esp)
    12a0:	c7 44 24 04 34 49 00 	movl   $0x4934,0x4(%esp)
    12a7:	00 
    12a8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12af:	e8 9c 2e 00 00       	call   4150 <printf>
          exit(1);
    12b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12bb:	e8 32 2d 00 00       	call   3ff2 <exit>
        printf(1, "create failed\n");
    12c0:	c7 44 24 04 bf 4b 00 	movl   $0x4bbf,0x4(%esp)
    12c7:	00 
    12c8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12cf:	e8 7c 2e 00 00       	call   4150 <printf>
        exit(1);
    12d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12db:	e8 12 2d 00 00       	call   3ff2 <exit>
      printf(1, "fork failed\n");
    12e0:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    12e7:	00 
    12e8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ef:	e8 5c 2e 00 00       	call   4150 <printf>
      exit(1);
    12f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12fb:	e8 f2 2c 00 00       	call   3ff2 <exit>
      printf(1, "wrong length %d\n", total);
    1300:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1304:	c7 44 24 04 51 49 00 	movl   $0x4951,0x4(%esp)
    130b:	00 
    130c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1313:	e8 38 2e 00 00       	call   4150 <printf>
      exit(1);
    1318:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    131f:	e8 ce 2c 00 00       	call   3ff2 <exit>
    1324:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    132a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001330 <createdelete>:
{
    1330:	55                   	push   %ebp
    1331:	89 e5                	mov    %esp,%ebp
    1333:	57                   	push   %edi
    1334:	56                   	push   %esi
    1335:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1336:	31 db                	xor    %ebx,%ebx
{
    1338:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    133b:	c7 44 24 04 70 49 00 	movl   $0x4970,0x4(%esp)
    1342:	00 
    1343:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    134a:	e8 01 2e 00 00       	call   4150 <printf>
    pid = fork();
    134f:	e8 96 2c 00 00       	call   3fea <fork>
    if(pid < 0){
    1354:	85 c0                	test   %eax,%eax
    1356:	0f 88 0c 02 00 00    	js     1568 <createdelete+0x238>
    135c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1360:	0f 84 2c 01 00 00    	je     1492 <createdelete+0x162>
  for(pi = 0; pi < 4; pi++){
    1366:	83 c3 01             	add    $0x1,%ebx
    1369:	83 fb 04             	cmp    $0x4,%ebx
    136c:	75 e1                	jne    134f <createdelete+0x1f>
    wait(0);
    136e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < N; i++){
    1375:	31 f6                	xor    %esi,%esi
    wait(0);
    1377:	e8 7e 2c 00 00       	call   3ffa <wait>
    137c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    137f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1386:	e8 6f 2c 00 00       	call   3ffa <wait>
    138b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1392:	e8 63 2c 00 00       	call   3ffa <wait>
    1397:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    139e:	e8 57 2c 00 00       	call   3ffa <wait>
  name[0] = name[1] = name[2] = 0;
    13a3:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    13a7:	90                   	nop
    13a8:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    13ab:	bb 70 00 00 00       	mov    $0x70,%ebx
    13b0:	8d 46 30             	lea    0x30(%esi),%eax
    13b3:	0f 9f 45 c7          	setg   -0x39(%ebp)
    13b7:	85 f6                	test   %esi,%esi
    13b9:	88 45 c6             	mov    %al,-0x3a(%ebp)
    13bc:	0f 94 c0             	sete   %al
    13bf:	08 45 c7             	or     %al,-0x39(%ebp)
    13c2:	8d 46 ff             	lea    -0x1(%esi),%eax
    13c5:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    13c8:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    13cc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    13d3:	00 
    13d4:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    13d7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13da:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13dd:	e8 50 2c 00 00       	call   4032 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    13e2:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    13e6:	0f 84 84 00 00 00    	je     1470 <createdelete+0x140>
    13ec:	85 c0                	test   %eax,%eax
    13ee:	0f 88 30 01 00 00    	js     1524 <createdelete+0x1f4>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    13f4:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    13f8:	0f 86 8a 01 00 00    	jbe    1588 <createdelete+0x258>
        close(fd);
    13fe:	89 04 24             	mov    %eax,(%esp)
    1401:	83 c3 01             	add    $0x1,%ebx
    1404:	e8 11 2c 00 00       	call   401a <close>
    for(pi = 0; pi < 4; pi++){
    1409:	80 fb 74             	cmp    $0x74,%bl
    140c:	75 ba                	jne    13c8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    140e:	83 c6 01             	add    $0x1,%esi
    1411:	83 fe 14             	cmp    $0x14,%esi
    1414:	75 92                	jne    13a8 <createdelete+0x78>
    1416:	be 70 00 00 00       	mov    $0x70,%esi
    141b:	90                   	nop
    141c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1420:	8d 46 c0             	lea    -0x40(%esi),%eax
    1423:	bb 04 00 00 00       	mov    $0x4,%ebx
    1428:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    142b:	89 f0                	mov    %esi,%eax
    142d:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1430:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1434:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    1437:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    143a:	e8 03 2c 00 00       	call   4042 <unlink>
    for(pi = 0; pi < 4; pi++){
    143f:	83 eb 01             	sub    $0x1,%ebx
    1442:	75 e7                	jne    142b <createdelete+0xfb>
    1444:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1447:	89 f0                	mov    %esi,%eax
    1449:	3c 84                	cmp    $0x84,%al
    144b:	75 d3                	jne    1420 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    144d:	c7 44 24 04 83 49 00 	movl   $0x4983,0x4(%esp)
    1454:	00 
    1455:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    145c:	e8 ef 2c 00 00       	call   4150 <printf>
}
    1461:	83 c4 4c             	add    $0x4c,%esp
    1464:	5b                   	pop    %ebx
    1465:	5e                   	pop    %esi
    1466:	5f                   	pop    %edi
    1467:	5d                   	pop    %ebp
    1468:	c3                   	ret    
    1469:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1470:	85 c0                	test   %eax,%eax
    1472:	0f 89 10 01 00 00    	jns    1588 <createdelete+0x258>
    1478:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    147b:	80 fb 74             	cmp    $0x74,%bl
    147e:	0f 85 44 ff ff ff    	jne    13c8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    1484:	83 c6 01             	add    $0x1,%esi
    1487:	83 fe 14             	cmp    $0x14,%esi
    148a:	0f 85 18 ff ff ff    	jne    13a8 <createdelete+0x78>
    1490:	eb 84                	jmp    1416 <createdelete+0xe6>
      name[0] = 'p' + pi;
    1492:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    1495:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    149a:	88 5d c8             	mov    %bl,-0x38(%ebp)
    149d:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    14a0:	31 db                	xor    %ebx,%ebx
    14a2:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    14a6:	eb 0b                	jmp    14b3 <createdelete+0x183>
      for(i = 0; i < N; i++){
    14a8:	83 fe 14             	cmp    $0x14,%esi
    14ab:	74 6b                	je     1518 <createdelete+0x1e8>
    14ad:	83 c3 01             	add    $0x1,%ebx
    14b0:	83 c6 01             	add    $0x1,%esi
    14b3:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    14b6:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    14bd:	00 
    14be:	89 3c 24             	mov    %edi,(%esp)
    14c1:	88 45 c9             	mov    %al,-0x37(%ebp)
    14c4:	e8 69 2b 00 00       	call   4032 <open>
        if(fd < 0){
    14c9:	85 c0                	test   %eax,%eax
    14cb:	78 7b                	js     1548 <createdelete+0x218>
        close(fd);
    14cd:	89 04 24             	mov    %eax,(%esp)
    14d0:	e8 45 2b 00 00       	call   401a <close>
        if(i > 0 && (i % 2 ) == 0){
    14d5:	85 db                	test   %ebx,%ebx
    14d7:	74 d4                	je     14ad <createdelete+0x17d>
    14d9:	f6 c3 01             	test   $0x1,%bl
    14dc:	75 ca                	jne    14a8 <createdelete+0x178>
          name[1] = '0' + (i / 2);
    14de:	89 d8                	mov    %ebx,%eax
    14e0:	d1 f8                	sar    %eax
    14e2:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    14e5:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    14e8:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    14eb:	e8 52 2b 00 00       	call   4042 <unlink>
    14f0:	85 c0                	test   %eax,%eax
    14f2:	79 b4                	jns    14a8 <createdelete+0x178>
            printf(1, "unlink failed\n");
    14f4:	c7 44 24 04 71 45 00 	movl   $0x4571,0x4(%esp)
    14fb:	00 
    14fc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1503:	e8 48 2c 00 00       	call   4150 <printf>
            exit(1);
    1508:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    150f:	e8 de 2a 00 00       	call   3ff2 <exit>
    1514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(0);
    1518:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    151f:	e8 ce 2a 00 00       	call   3ff2 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1524:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1528:	c7 44 24 04 30 56 00 	movl   $0x5630,0x4(%esp)
    152f:	00 
    1530:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1537:	e8 14 2c 00 00       	call   4150 <printf>
        exit(1);
    153c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1543:	e8 aa 2a 00 00       	call   3ff2 <exit>
          printf(1, "create failed\n");
    1548:	c7 44 24 04 bf 4b 00 	movl   $0x4bbf,0x4(%esp)
    154f:	00 
    1550:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1557:	e8 f4 2b 00 00       	call   4150 <printf>
          exit(1);
    155c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1563:	e8 8a 2a 00 00       	call   3ff2 <exit>
      printf(1, "fork failed\n");
    1568:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    156f:	00 
    1570:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1577:	e8 d4 2b 00 00       	call   4150 <printf>
      exit(1);
    157c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1583:	e8 6a 2a 00 00       	call   3ff2 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    1588:	89 7c 24 08          	mov    %edi,0x8(%esp)
    158c:	c7 44 24 04 54 56 00 	movl   $0x5654,0x4(%esp)
    1593:	00 
    1594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    159b:	e8 b0 2b 00 00       	call   4150 <printf>
        exit(1);
    15a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15a7:	e8 46 2a 00 00       	call   3ff2 <exit>
    15ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015b0 <unlinkread>:
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	56                   	push   %esi
    15b4:	53                   	push   %ebx
    15b5:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    15b8:	c7 44 24 04 94 49 00 	movl   $0x4994,0x4(%esp)
    15bf:	00 
    15c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15c7:	e8 84 2b 00 00       	call   4150 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15cc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15d3:	00 
    15d4:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    15db:	e8 52 2a 00 00       	call   4032 <open>
  if(fd < 0){
    15e0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15e2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15e4:	0f 88 02 01 00 00    	js     16ec <unlinkread+0x13c>
  write(fd, "hello", 5);
    15ea:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    15f1:	00 
    15f2:	c7 44 24 04 ca 49 00 	movl   $0x49ca,0x4(%esp)
    15f9:	00 
    15fa:	89 04 24             	mov    %eax,(%esp)
    15fd:	e8 10 2a 00 00       	call   4012 <write>
  close(fd);
    1602:	89 1c 24             	mov    %ebx,(%esp)
    1605:	e8 10 2a 00 00       	call   401a <close>
  fd = open("unlinkread", O_RDWR);
    160a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1611:	00 
    1612:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    1619:	e8 14 2a 00 00       	call   4032 <open>
  if(fd < 0){
    161e:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1620:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1622:	0f 88 64 01 00 00    	js     178c <unlinkread+0x1dc>
  if(unlink("unlinkread") != 0){
    1628:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    162f:	e8 0e 2a 00 00       	call   4042 <unlink>
    1634:	85 c0                	test   %eax,%eax
    1636:	0f 85 30 01 00 00    	jne    176c <unlinkread+0x1bc>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    163c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1643:	00 
    1644:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    164b:	e8 e2 29 00 00       	call   4032 <open>
  write(fd1, "yyy", 3);
    1650:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1657:	00 
    1658:	c7 44 24 04 02 4a 00 	movl   $0x4a02,0x4(%esp)
    165f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1660:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1662:	89 04 24             	mov    %eax,(%esp)
    1665:	e8 a8 29 00 00       	call   4012 <write>
  close(fd1);
    166a:	89 34 24             	mov    %esi,(%esp)
    166d:	e8 a8 29 00 00       	call   401a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1672:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1679:	00 
    167a:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    1681:	00 
    1682:	89 1c 24             	mov    %ebx,(%esp)
    1685:	e8 80 29 00 00       	call   400a <read>
    168a:	83 f8 05             	cmp    $0x5,%eax
    168d:	0f 85 b9 00 00 00    	jne    174c <unlinkread+0x19c>
  if(buf[0] != 'h'){
    1693:	80 3d 20 8d 00 00 68 	cmpb   $0x68,0x8d20
    169a:	0f 85 8c 00 00 00    	jne    172c <unlinkread+0x17c>
  if(write(fd, buf, 10) != 10){
    16a0:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    16a7:	00 
    16a8:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    16af:	00 
    16b0:	89 1c 24             	mov    %ebx,(%esp)
    16b3:	e8 5a 29 00 00       	call   4012 <write>
    16b8:	83 f8 0a             	cmp    $0xa,%eax
    16bb:	75 4f                	jne    170c <unlinkread+0x15c>
  close(fd);
    16bd:	89 1c 24             	mov    %ebx,(%esp)
    16c0:	e8 55 29 00 00       	call   401a <close>
  unlink("unlinkread");
    16c5:	c7 04 24 a5 49 00 00 	movl   $0x49a5,(%esp)
    16cc:	e8 71 29 00 00       	call   4042 <unlink>
  printf(1, "unlinkread ok\n");
    16d1:	c7 44 24 04 4d 4a 00 	movl   $0x4a4d,0x4(%esp)
    16d8:	00 
    16d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16e0:	e8 6b 2a 00 00       	call   4150 <printf>
}
    16e5:	83 c4 10             	add    $0x10,%esp
    16e8:	5b                   	pop    %ebx
    16e9:	5e                   	pop    %esi
    16ea:	5d                   	pop    %ebp
    16eb:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16ec:	c7 44 24 04 b0 49 00 	movl   $0x49b0,0x4(%esp)
    16f3:	00 
    16f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16fb:	e8 50 2a 00 00       	call   4150 <printf>
    exit(1);
    1700:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1707:	e8 e6 28 00 00       	call   3ff2 <exit>
    printf(1, "unlinkread write failed\n");
    170c:	c7 44 24 04 34 4a 00 	movl   $0x4a34,0x4(%esp)
    1713:	00 
    1714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    171b:	e8 30 2a 00 00       	call   4150 <printf>
    exit(1);
    1720:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1727:	e8 c6 28 00 00       	call   3ff2 <exit>
    printf(1, "unlinkread wrong data\n");
    172c:	c7 44 24 04 1d 4a 00 	movl   $0x4a1d,0x4(%esp)
    1733:	00 
    1734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    173b:	e8 10 2a 00 00       	call   4150 <printf>
    exit(1);
    1740:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1747:	e8 a6 28 00 00       	call   3ff2 <exit>
    printf(1, "unlinkread read failed");
    174c:	c7 44 24 04 06 4a 00 	movl   $0x4a06,0x4(%esp)
    1753:	00 
    1754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    175b:	e8 f0 29 00 00       	call   4150 <printf>
    exit(1);
    1760:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1767:	e8 86 28 00 00       	call   3ff2 <exit>
    printf(1, "unlink unlinkread failed\n");
    176c:	c7 44 24 04 e8 49 00 	movl   $0x49e8,0x4(%esp)
    1773:	00 
    1774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    177b:	e8 d0 29 00 00       	call   4150 <printf>
    exit(1);
    1780:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1787:	e8 66 28 00 00       	call   3ff2 <exit>
    printf(1, "open unlinkread failed\n");
    178c:	c7 44 24 04 d0 49 00 	movl   $0x49d0,0x4(%esp)
    1793:	00 
    1794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    179b:	e8 b0 29 00 00       	call   4150 <printf>
    exit(1);
    17a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17a7:	e8 46 28 00 00       	call   3ff2 <exit>
    17ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000017b0 <linktest>:
{
    17b0:	55                   	push   %ebp
    17b1:	89 e5                	mov    %esp,%ebp
    17b3:	53                   	push   %ebx
    17b4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    17b7:	c7 44 24 04 5c 4a 00 	movl   $0x4a5c,0x4(%esp)
    17be:	00 
    17bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17c6:	e8 85 29 00 00       	call   4150 <printf>
  unlink("lf1");
    17cb:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    17d2:	e8 6b 28 00 00       	call   4042 <unlink>
  unlink("lf2");
    17d7:	c7 04 24 6a 4a 00 00 	movl   $0x4a6a,(%esp)
    17de:	e8 5f 28 00 00       	call   4042 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    17e3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    17ea:	00 
    17eb:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    17f2:	e8 3b 28 00 00       	call   4032 <open>
  if(fd < 0){
    17f7:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    17f9:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    17fb:	0f 88 26 01 00 00    	js     1927 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    1801:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1808:	00 
    1809:	c7 44 24 04 ca 49 00 	movl   $0x49ca,0x4(%esp)
    1810:	00 
    1811:	89 04 24             	mov    %eax,(%esp)
    1814:	e8 f9 27 00 00       	call   4012 <write>
    1819:	83 f8 05             	cmp    $0x5,%eax
    181c:	0f 85 05 02 00 00    	jne    1a27 <linktest+0x277>
  close(fd);
    1822:	89 1c 24             	mov    %ebx,(%esp)
    1825:	e8 f0 27 00 00       	call   401a <close>
  if(link("lf1", "lf2") < 0){
    182a:	c7 44 24 04 6a 4a 00 	movl   $0x4a6a,0x4(%esp)
    1831:	00 
    1832:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    1839:	e8 14 28 00 00       	call   4052 <link>
    183e:	85 c0                	test   %eax,%eax
    1840:	0f 88 c1 01 00 00    	js     1a07 <linktest+0x257>
  unlink("lf1");
    1846:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    184d:	e8 f0 27 00 00       	call   4042 <unlink>
  if(open("lf1", 0) >= 0){
    1852:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1859:	00 
    185a:	c7 04 24 66 4a 00 00 	movl   $0x4a66,(%esp)
    1861:	e8 cc 27 00 00       	call   4032 <open>
    1866:	85 c0                	test   %eax,%eax
    1868:	0f 89 79 01 00 00    	jns    19e7 <linktest+0x237>
  fd = open("lf2", 0);
    186e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1875:	00 
    1876:	c7 04 24 6a 4a 00 00 	movl   $0x4a6a,(%esp)
    187d:	e8 b0 27 00 00       	call   4032 <open>
  if(fd < 0){
    1882:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1884:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1886:	0f 88 3b 01 00 00    	js     19c7 <linktest+0x217>
  if(read(fd, buf, sizeof(buf)) != 5){
    188c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1893:	00 
    1894:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    189b:	00 
    189c:	89 04 24             	mov    %eax,(%esp)
    189f:	e8 66 27 00 00       	call   400a <read>
    18a4:	83 f8 05             	cmp    $0x5,%eax
    18a7:	0f 85 fa 00 00 00    	jne    19a7 <linktest+0x1f7>
  close(fd);
    18ad:	89 1c 24             	mov    %ebx,(%esp)
    18b0:	e8 65 27 00 00       	call   401a <close>
  if(link("lf2", "lf2") >= 0){
    18b5:	c7 44 24 04 6a 4a 00 	movl   $0x4a6a,0x4(%esp)
    18bc:	00 
    18bd:	c7 04 24 6a 4a 00 00 	movl   $0x4a6a,(%esp)
    18c4:	e8 89 27 00 00       	call   4052 <link>
    18c9:	85 c0                	test   %eax,%eax
    18cb:	0f 89 b6 00 00 00    	jns    1987 <linktest+0x1d7>
  unlink("lf2");
    18d1:	c7 04 24 6a 4a 00 00 	movl   $0x4a6a,(%esp)
    18d8:	e8 65 27 00 00       	call   4042 <unlink>
  if(link("lf2", "lf1") >= 0){
    18dd:	c7 44 24 04 66 4a 00 	movl   $0x4a66,0x4(%esp)
    18e4:	00 
    18e5:	c7 04 24 6a 4a 00 00 	movl   $0x4a6a,(%esp)
    18ec:	e8 61 27 00 00       	call   4052 <link>
    18f1:	85 c0                	test   %eax,%eax
    18f3:	79 72                	jns    1967 <linktest+0x1b7>
  if(link(".", "lf1") >= 0){
    18f5:	c7 44 24 04 66 4a 00 	movl   $0x4a66,0x4(%esp)
    18fc:	00 
    18fd:	c7 04 24 2e 4d 00 00 	movl   $0x4d2e,(%esp)
    1904:	e8 49 27 00 00       	call   4052 <link>
    1909:	85 c0                	test   %eax,%eax
    190b:	79 3a                	jns    1947 <linktest+0x197>
  printf(1, "linktest ok\n");
    190d:	c7 44 24 04 04 4b 00 	movl   $0x4b04,0x4(%esp)
    1914:	00 
    1915:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    191c:	e8 2f 28 00 00       	call   4150 <printf>
}
    1921:	83 c4 14             	add    $0x14,%esp
    1924:	5b                   	pop    %ebx
    1925:	5d                   	pop    %ebp
    1926:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1927:	c7 44 24 04 6e 4a 00 	movl   $0x4a6e,0x4(%esp)
    192e:	00 
    192f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1936:	e8 15 28 00 00       	call   4150 <printf>
    exit(1);
    193b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1942:	e8 ab 26 00 00       	call   3ff2 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1947:	c7 44 24 04 e8 4a 00 	movl   $0x4ae8,0x4(%esp)
    194e:	00 
    194f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1956:	e8 f5 27 00 00       	call   4150 <printf>
    exit(1);
    195b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1962:	e8 8b 26 00 00       	call   3ff2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1967:	c7 44 24 04 9c 56 00 	movl   $0x569c,0x4(%esp)
    196e:	00 
    196f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1976:	e8 d5 27 00 00       	call   4150 <printf>
    exit(1);
    197b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1982:	e8 6b 26 00 00       	call   3ff2 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1987:	c7 44 24 04 ca 4a 00 	movl   $0x4aca,0x4(%esp)
    198e:	00 
    198f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1996:	e8 b5 27 00 00       	call   4150 <printf>
    exit(1);
    199b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a2:	e8 4b 26 00 00       	call   3ff2 <exit>
    printf(1, "read lf2 failed\n");
    19a7:	c7 44 24 04 b9 4a 00 	movl   $0x4ab9,0x4(%esp)
    19ae:	00 
    19af:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19b6:	e8 95 27 00 00       	call   4150 <printf>
    exit(1);
    19bb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c2:	e8 2b 26 00 00       	call   3ff2 <exit>
    printf(1, "open lf2 failed\n");
    19c7:	c7 44 24 04 a8 4a 00 	movl   $0x4aa8,0x4(%esp)
    19ce:	00 
    19cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19d6:	e8 75 27 00 00       	call   4150 <printf>
    exit(1);
    19db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19e2:	e8 0b 26 00 00       	call   3ff2 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    19e7:	c7 44 24 04 74 56 00 	movl   $0x5674,0x4(%esp)
    19ee:	00 
    19ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19f6:	e8 55 27 00 00       	call   4150 <printf>
    exit(1);
    19fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a02:	e8 eb 25 00 00       	call   3ff2 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1a07:	c7 44 24 04 93 4a 00 	movl   $0x4a93,0x4(%esp)
    1a0e:	00 
    1a0f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a16:	e8 35 27 00 00       	call   4150 <printf>
    exit(1);
    1a1b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a22:	e8 cb 25 00 00       	call   3ff2 <exit>
    printf(1, "write lf1 failed\n");
    1a27:	c7 44 24 04 81 4a 00 	movl   $0x4a81,0x4(%esp)
    1a2e:	00 
    1a2f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a36:	e8 15 27 00 00       	call   4150 <printf>
    exit(1);
    1a3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a42:	e8 ab 25 00 00       	call   3ff2 <exit>
    1a47:	89 f6                	mov    %esi,%esi
    1a49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a50 <concreate>:
{
    1a50:	55                   	push   %ebp
    1a51:	89 e5                	mov    %esp,%ebp
    1a53:	57                   	push   %edi
    1a54:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1a55:	31 f6                	xor    %esi,%esi
{
    1a57:	53                   	push   %ebx
    1a58:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    1a5b:	c7 44 24 04 11 4b 00 	movl   $0x4b11,0x4(%esp)
    1a62:	00 
    1a63:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1a66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a6d:	e8 de 26 00 00       	call   4150 <printf>
  file[0] = 'C';
    1a72:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a76:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a7a:	eb 5a                	jmp    1ad6 <concreate+0x86>
    1a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a80:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a85:	89 f1                	mov    %esi,%ecx
    1a87:	f7 ee                	imul   %esi
    1a89:	89 f0                	mov    %esi,%eax
    1a8b:	c1 f8 1f             	sar    $0x1f,%eax
    1a8e:	29 c2                	sub    %eax,%edx
    1a90:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a93:	29 c1                	sub    %eax,%ecx
    1a95:	83 f9 01             	cmp    $0x1,%ecx
    1a98:	0f 84 8a 00 00 00    	je     1b28 <concreate+0xd8>
      fd = open(file, O_CREATE | O_RDWR);
    1a9e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1aa5:	00 
    1aa6:	89 1c 24             	mov    %ebx,(%esp)
    1aa9:	e8 84 25 00 00       	call   4032 <open>
      if(fd < 0){
    1aae:	85 c0                	test   %eax,%eax
    1ab0:	0f 88 5e 02 00 00    	js     1d14 <concreate+0x2c4>
      close(fd);
    1ab6:	89 04 24             	mov    %eax,(%esp)
    1ab9:	e8 5c 25 00 00       	call   401a <close>
    if(pid == 0)
    1abe:	85 ff                	test   %edi,%edi
    1ac0:	74 59                	je     1b1b <concreate+0xcb>
      wait(0);
    1ac2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1ac9:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1acc:	e8 29 25 00 00       	call   3ffa <wait>
  for(i = 0; i < 40; i++){
    1ad1:	83 fe 28             	cmp    $0x28,%esi
    1ad4:	74 6a                	je     1b40 <concreate+0xf0>
    1ad6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1ad9:	89 1c 24             	mov    %ebx,(%esp)
    1adc:	88 45 ae             	mov    %al,-0x52(%ebp)
    1adf:	e8 5e 25 00 00       	call   4042 <unlink>
    pid = fork();
    1ae4:	e8 01 25 00 00       	call   3fea <fork>
    if(pid && (i % 3) == 1){
    1ae9:	85 c0                	test   %eax,%eax
    pid = fork();
    1aeb:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1aed:	75 91                	jne    1a80 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1aef:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1af4:	89 f1                	mov    %esi,%ecx
    1af6:	f7 ee                	imul   %esi
    1af8:	89 f0                	mov    %esi,%eax
    1afa:	c1 f8 1f             	sar    $0x1f,%eax
    1afd:	d1 fa                	sar    %edx
    1aff:	29 c2                	sub    %eax,%edx
    1b01:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1b04:	29 c1                	sub    %eax,%ecx
    1b06:	83 f9 01             	cmp    $0x1,%ecx
    1b09:	75 93                	jne    1a9e <concreate+0x4e>
      link("C0", file);
    1b0b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b0f:	c7 04 24 21 4b 00 00 	movl   $0x4b21,(%esp)
    1b16:	e8 37 25 00 00       	call   4052 <link>
      exit(0);
    1b1b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b22:	e8 cb 24 00 00       	call   3ff2 <exit>
    1b27:	90                   	nop
      link("C0", file);
    1b28:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b2c:	c7 04 24 21 4b 00 00 	movl   $0x4b21,(%esp)
    1b33:	e8 1a 25 00 00       	call   4052 <link>
    1b38:	eb 88                	jmp    1ac2 <concreate+0x72>
    1b3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1b40:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b43:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1b4a:	00 
    1b4b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b4e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b55:	00 
    1b56:	89 04 24             	mov    %eax,(%esp)
    1b59:	e8 22 23 00 00       	call   3e80 <memset>
  fd = open(".", 0);
    1b5e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b65:	00 
    1b66:	c7 04 24 2e 4d 00 00 	movl   $0x4d2e,(%esp)
    1b6d:	e8 c0 24 00 00       	call   4032 <open>
  n = 0;
    1b72:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1b79:	89 c6                	mov    %eax,%esi
    1b7b:	90                   	nop
    1b7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b80:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b87:	00 
    1b88:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b8c:	89 34 24             	mov    %esi,(%esp)
    1b8f:	e8 76 24 00 00       	call   400a <read>
    1b94:	85 c0                	test   %eax,%eax
    1b96:	7e 40                	jle    1bd8 <concreate+0x188>
    if(de.inum == 0)
    1b98:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1b9d:	74 e1                	je     1b80 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1b9f:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1ba3:	75 db                	jne    1b80 <concreate+0x130>
    1ba5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1ba9:	75 d5                	jne    1b80 <concreate+0x130>
      i = de.name[1] - '0';
    1bab:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1baf:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1bb2:	83 f8 27             	cmp    $0x27,%eax
    1bb5:	0f 87 7d 01 00 00    	ja     1d38 <concreate+0x2e8>
      if(fa[i]){
    1bbb:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1bc0:	0f 85 b9 01 00 00    	jne    1d7f <concreate+0x32f>
      fa[i] = 1;
    1bc6:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bcb:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1bcf:	eb af                	jmp    1b80 <concreate+0x130>
    1bd1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1bd8:	89 34 24             	mov    %esi,(%esp)
    1bdb:	e8 3a 24 00 00       	call   401a <close>
  if(n != 40){
    1be0:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1be4:	0f 85 75 01 00 00    	jne    1d5f <concreate+0x30f>
    1bea:	31 f6                	xor    %esi,%esi
    1bec:	e9 8b 00 00 00       	jmp    1c7c <concreate+0x22c>
    1bf1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
       ((i % 3) == 1 && pid != 0)){
    1bf8:	85 ff                	test   %edi,%edi
    1bfa:	0f 84 b5 00 00 00    	je     1cb5 <concreate+0x265>
      close(open(file, 0));
    1c00:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c07:	00 
    1c08:	89 1c 24             	mov    %ebx,(%esp)
    1c0b:	e8 22 24 00 00       	call   4032 <open>
    1c10:	89 04 24             	mov    %eax,(%esp)
    1c13:	e8 02 24 00 00       	call   401a <close>
      close(open(file, 0));
    1c18:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c1f:	00 
    1c20:	89 1c 24             	mov    %ebx,(%esp)
    1c23:	e8 0a 24 00 00       	call   4032 <open>
    1c28:	89 04 24             	mov    %eax,(%esp)
    1c2b:	e8 ea 23 00 00       	call   401a <close>
      close(open(file, 0));
    1c30:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c37:	00 
    1c38:	89 1c 24             	mov    %ebx,(%esp)
    1c3b:	e8 f2 23 00 00       	call   4032 <open>
    1c40:	89 04 24             	mov    %eax,(%esp)
    1c43:	e8 d2 23 00 00       	call   401a <close>
      close(open(file, 0));
    1c48:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c4f:	00 
    1c50:	89 1c 24             	mov    %ebx,(%esp)
    1c53:	e8 da 23 00 00       	call   4032 <open>
    1c58:	89 04 24             	mov    %eax,(%esp)
    1c5b:	e8 ba 23 00 00       	call   401a <close>
    if(pid == 0)
    1c60:	85 ff                	test   %edi,%edi
    1c62:	0f 84 b3 fe ff ff    	je     1b1b <concreate+0xcb>
      wait(0);
    1c68:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1c6f:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1c72:	e8 83 23 00 00       	call   3ffa <wait>
  for(i = 0; i < 40; i++){
    1c77:	83 fe 28             	cmp    $0x28,%esi
    1c7a:	74 5c                	je     1cd8 <concreate+0x288>
    1c7c:	8d 46 30             	lea    0x30(%esi),%eax
    1c7f:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c82:	e8 63 23 00 00       	call   3fea <fork>
    if(pid < 0){
    1c87:	85 c0                	test   %eax,%eax
    pid = fork();
    1c89:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c8b:	78 67                	js     1cf4 <concreate+0x2a4>
    if(((i % 3) == 0 && pid == 0) ||
    1c8d:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1c92:	f7 ee                	imul   %esi
    1c94:	89 f0                	mov    %esi,%eax
    1c96:	c1 f8 1f             	sar    $0x1f,%eax
    1c99:	29 c2                	sub    %eax,%edx
    1c9b:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c9e:	89 f2                	mov    %esi,%edx
    1ca0:	29 c2                	sub    %eax,%edx
    1ca2:	89 d0                	mov    %edx,%eax
    1ca4:	09 f8                	or     %edi,%eax
    1ca6:	0f 84 54 ff ff ff    	je     1c00 <concreate+0x1b0>
    1cac:	83 fa 01             	cmp    $0x1,%edx
    1caf:	0f 84 43 ff ff ff    	je     1bf8 <concreate+0x1a8>
      unlink(file);
    1cb5:	89 1c 24             	mov    %ebx,(%esp)
    1cb8:	e8 85 23 00 00       	call   4042 <unlink>
      unlink(file);
    1cbd:	89 1c 24             	mov    %ebx,(%esp)
    1cc0:	e8 7d 23 00 00       	call   4042 <unlink>
      unlink(file);
    1cc5:	89 1c 24             	mov    %ebx,(%esp)
    1cc8:	e8 75 23 00 00       	call   4042 <unlink>
      unlink(file);
    1ccd:	89 1c 24             	mov    %ebx,(%esp)
    1cd0:	e8 6d 23 00 00       	call   4042 <unlink>
    1cd5:	eb 89                	jmp    1c60 <concreate+0x210>
    1cd7:	90                   	nop
  printf(1, "concreate ok\n");
    1cd8:	c7 44 24 04 76 4b 00 	movl   $0x4b76,0x4(%esp)
    1cdf:	00 
    1ce0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ce7:	e8 64 24 00 00       	call   4150 <printf>
}
    1cec:	83 c4 5c             	add    $0x5c,%esp
    1cef:	5b                   	pop    %ebx
    1cf0:	5e                   	pop    %esi
    1cf1:	5f                   	pop    %edi
    1cf2:	5d                   	pop    %ebp
    1cf3:	c3                   	ret    
      printf(1, "fork failed\n");
    1cf4:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    1cfb:	00 
    1cfc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d03:	e8 48 24 00 00       	call   4150 <printf>
      exit(1);
    1d08:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d0f:	e8 de 22 00 00       	call   3ff2 <exit>
        printf(1, "concreate create %s failed\n", file);
    1d14:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1d18:	c7 44 24 04 24 4b 00 	movl   $0x4b24,0x4(%esp)
    1d1f:	00 
    1d20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d27:	e8 24 24 00 00       	call   4150 <printf>
        exit(1);
    1d2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d33:	e8 ba 22 00 00       	call   3ff2 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1d38:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d3b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d3f:	c7 44 24 04 40 4b 00 	movl   $0x4b40,0x4(%esp)
    1d46:	00 
    1d47:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d4e:	e8 fd 23 00 00       	call   4150 <printf>
        exit(1);
    1d53:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d5a:	e8 93 22 00 00       	call   3ff2 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1d5f:	c7 44 24 04 c0 56 00 	movl   $0x56c0,0x4(%esp)
    1d66:	00 
    1d67:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d6e:	e8 dd 23 00 00       	call   4150 <printf>
    exit(1);
    1d73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d7a:	e8 73 22 00 00       	call   3ff2 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d7f:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d82:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d86:	c7 44 24 04 59 4b 00 	movl   $0x4b59,0x4(%esp)
    1d8d:	00 
    1d8e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d95:	e8 b6 23 00 00       	call   4150 <printf>
        exit(1);
    1d9a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1da1:	e8 4c 22 00 00       	call   3ff2 <exit>
    1da6:	8d 76 00             	lea    0x0(%esi),%esi
    1da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001db0 <linkunlink>:
{
    1db0:	55                   	push   %ebp
    1db1:	89 e5                	mov    %esp,%ebp
    1db3:	57                   	push   %edi
    1db4:	56                   	push   %esi
    1db5:	53                   	push   %ebx
    1db6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1db9:	c7 44 24 04 84 4b 00 	movl   $0x4b84,0x4(%esp)
    1dc0:	00 
    1dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dc8:	e8 83 23 00 00       	call   4150 <printf>
  unlink("x");
    1dcd:	c7 04 24 11 4e 00 00 	movl   $0x4e11,(%esp)
    1dd4:	e8 69 22 00 00       	call   4042 <unlink>
  pid = fork();
    1dd9:	e8 0c 22 00 00       	call   3fea <fork>
  if(pid < 0){
    1dde:	85 c0                	test   %eax,%eax
  pid = fork();
    1de0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1de3:	0f 88 c0 00 00 00    	js     1ea9 <linkunlink+0xf9>
  unsigned int x = (pid ? 1 : 97);
    1de9:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1ded:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1df2:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1df7:	19 ff                	sbb    %edi,%edi
    1df9:	83 e7 60             	and    $0x60,%edi
    1dfc:	83 c7 01             	add    $0x1,%edi
    1dff:	eb 21                	jmp    1e22 <linkunlink+0x72>
    1e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1e08:	83 fa 01             	cmp    $0x1,%edx
    1e0b:	0f 84 7f 00 00 00    	je     1e90 <linkunlink+0xe0>
      unlink("x");
    1e11:	c7 04 24 11 4e 00 00 	movl   $0x4e11,(%esp)
    1e18:	e8 25 22 00 00       	call   4042 <unlink>
  for(i = 0; i < 100; i++){
    1e1d:	83 eb 01             	sub    $0x1,%ebx
    1e20:	74 3c                	je     1e5e <linkunlink+0xae>
    x = x * 1103515245 + 12345;
    1e22:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e28:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e2e:	89 f8                	mov    %edi,%eax
    1e30:	f7 e6                	mul    %esi
    1e32:	d1 ea                	shr    %edx
    1e34:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1e37:	89 fa                	mov    %edi,%edx
    1e39:	29 c2                	sub    %eax,%edx
    1e3b:	75 cb                	jne    1e08 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1e3d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1e44:	00 
    1e45:	c7 04 24 11 4e 00 00 	movl   $0x4e11,(%esp)
    1e4c:	e8 e1 21 00 00       	call   4032 <open>
    1e51:	89 04 24             	mov    %eax,(%esp)
    1e54:	e8 c1 21 00 00       	call   401a <close>
  for(i = 0; i < 100; i++){
    1e59:	83 eb 01             	sub    $0x1,%ebx
    1e5c:	75 c4                	jne    1e22 <linkunlink+0x72>
  if(pid)
    1e5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    wait(0);
    1e61:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid)
    1e68:	85 c0                	test   %eax,%eax
    1e6a:	74 5d                	je     1ec9 <linkunlink+0x119>
    wait(0);
    1e6c:	e8 89 21 00 00       	call   3ffa <wait>
  printf(1, "linkunlink ok\n");
    1e71:	c7 44 24 04 99 4b 00 	movl   $0x4b99,0x4(%esp)
    1e78:	00 
    1e79:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e80:	e8 cb 22 00 00       	call   4150 <printf>
}
    1e85:	83 c4 1c             	add    $0x1c,%esp
    1e88:	5b                   	pop    %ebx
    1e89:	5e                   	pop    %esi
    1e8a:	5f                   	pop    %edi
    1e8b:	5d                   	pop    %ebp
    1e8c:	c3                   	ret    
    1e8d:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1e90:	c7 44 24 04 11 4e 00 	movl   $0x4e11,0x4(%esp)
    1e97:	00 
    1e98:	c7 04 24 95 4b 00 00 	movl   $0x4b95,(%esp)
    1e9f:	e8 ae 21 00 00       	call   4052 <link>
    1ea4:	e9 74 ff ff ff       	jmp    1e1d <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1ea9:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    1eb0:	00 
    1eb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1eb8:	e8 93 22 00 00       	call   4150 <printf>
    exit(1);
    1ebd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ec4:	e8 29 21 00 00       	call   3ff2 <exit>
    exit(0);
    1ec9:	e8 24 21 00 00       	call   3ff2 <exit>
    1ece:	66 90                	xchg   %ax,%ax

00001ed0 <bigdir>:
{
    1ed0:	55                   	push   %ebp
    1ed1:	89 e5                	mov    %esp,%ebp
    1ed3:	56                   	push   %esi
    1ed4:	53                   	push   %ebx
    1ed5:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1ed8:	c7 44 24 04 a8 4b 00 	movl   $0x4ba8,0x4(%esp)
    1edf:	00 
    1ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ee7:	e8 64 22 00 00       	call   4150 <printf>
  unlink("bd");
    1eec:	c7 04 24 b5 4b 00 00 	movl   $0x4bb5,(%esp)
    1ef3:	e8 4a 21 00 00       	call   4042 <unlink>
  fd = open("bd", O_CREATE);
    1ef8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1eff:	00 
    1f00:	c7 04 24 b5 4b 00 00 	movl   $0x4bb5,(%esp)
    1f07:	e8 26 21 00 00       	call   4032 <open>
  if(fd < 0){
    1f0c:	85 c0                	test   %eax,%eax
    1f0e:	0f 88 f4 00 00 00    	js     2008 <bigdir+0x138>
  close(fd);
    1f14:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1f17:	31 db                	xor    %ebx,%ebx
  close(fd);
    1f19:	e8 fc 20 00 00       	call   401a <close>
    1f1e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f28:	89 d8                	mov    %ebx,%eax
    1f2a:	c1 f8 06             	sar    $0x6,%eax
    1f2d:	83 c0 30             	add    $0x30,%eax
    1f30:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f33:	89 d8                	mov    %ebx,%eax
    1f35:	83 e0 3f             	and    $0x3f,%eax
    1f38:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1f3b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1f3f:	c7 04 24 b5 4b 00 00 	movl   $0x4bb5,(%esp)
    name[0] = 'x';
    1f46:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f4a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f4d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1f51:	e8 fc 20 00 00       	call   4052 <link>
    1f56:	85 c0                	test   %eax,%eax
    1f58:	75 6e                	jne    1fc8 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1f5a:	83 c3 01             	add    $0x1,%ebx
    1f5d:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f63:	75 c3                	jne    1f28 <bigdir+0x58>
  unlink("bd");
    1f65:	c7 04 24 b5 4b 00 00 	movl   $0x4bb5,(%esp)
  for(i = 0; i < 500; i++){
    1f6c:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1f6f:	e8 ce 20 00 00       	call   4042 <unlink>
    1f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f78:	89 d8                	mov    %ebx,%eax
    1f7a:	c1 f8 06             	sar    $0x6,%eax
    1f7d:	83 c0 30             	add    $0x30,%eax
    1f80:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f83:	89 d8                	mov    %ebx,%eax
    1f85:	83 e0 3f             	and    $0x3f,%eax
    1f88:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1f8b:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1f8e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f92:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f95:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f99:	e8 a4 20 00 00       	call   4042 <unlink>
    1f9e:	85 c0                	test   %eax,%eax
    1fa0:	75 46                	jne    1fe8 <bigdir+0x118>
  for(i = 0; i < 500; i++){
    1fa2:	83 c3 01             	add    $0x1,%ebx
    1fa5:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1fab:	75 cb                	jne    1f78 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1fad:	c7 44 24 04 f7 4b 00 	movl   $0x4bf7,0x4(%esp)
    1fb4:	00 
    1fb5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fbc:	e8 8f 21 00 00       	call   4150 <printf>
}
    1fc1:	83 c4 20             	add    $0x20,%esp
    1fc4:	5b                   	pop    %ebx
    1fc5:	5e                   	pop    %esi
    1fc6:	5d                   	pop    %ebp
    1fc7:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1fc8:	c7 44 24 04 ce 4b 00 	movl   $0x4bce,0x4(%esp)
    1fcf:	00 
    1fd0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fd7:	e8 74 21 00 00       	call   4150 <printf>
      exit(1);
    1fdc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fe3:	e8 0a 20 00 00       	call   3ff2 <exit>
      printf(1, "bigdir unlink failed");
    1fe8:	c7 44 24 04 e2 4b 00 	movl   $0x4be2,0x4(%esp)
    1fef:	00 
    1ff0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ff7:	e8 54 21 00 00       	call   4150 <printf>
      exit(1);
    1ffc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2003:	e8 ea 1f 00 00       	call   3ff2 <exit>
    printf(1, "bigdir create failed\n");
    2008:	c7 44 24 04 b8 4b 00 	movl   $0x4bb8,0x4(%esp)
    200f:	00 
    2010:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2017:	e8 34 21 00 00       	call   4150 <printf>
    exit(1);
    201c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2023:	e8 ca 1f 00 00       	call   3ff2 <exit>
    2028:	90                   	nop
    2029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002030 <subdir>:
{
    2030:	55                   	push   %ebp
    2031:	89 e5                	mov    %esp,%ebp
    2033:	53                   	push   %ebx
    2034:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    2037:	c7 44 24 04 02 4c 00 	movl   $0x4c02,0x4(%esp)
    203e:	00 
    203f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2046:	e8 05 21 00 00       	call   4150 <printf>
  unlink("ff");
    204b:	c7 04 24 8b 4c 00 00 	movl   $0x4c8b,(%esp)
    2052:	e8 eb 1f 00 00       	call   4042 <unlink>
  if(mkdir("dd") != 0){
    2057:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    205e:	e8 f7 1f 00 00       	call   405a <mkdir>
    2063:	85 c0                	test   %eax,%eax
    2065:	0f 85 a1 06 00 00    	jne    270c <subdir+0x6dc>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    206b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2072:	00 
    2073:	c7 04 24 61 4c 00 00 	movl   $0x4c61,(%esp)
    207a:	e8 b3 1f 00 00       	call   4032 <open>
  if(fd < 0){
    207f:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2081:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2083:	0f 88 63 06 00 00    	js     26ec <subdir+0x6bc>
  write(fd, "ff", 2);
    2089:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2090:	00 
    2091:	c7 44 24 04 8b 4c 00 	movl   $0x4c8b,0x4(%esp)
    2098:	00 
    2099:	89 04 24             	mov    %eax,(%esp)
    209c:	e8 71 1f 00 00       	call   4012 <write>
  close(fd);
    20a1:	89 1c 24             	mov    %ebx,(%esp)
    20a4:	e8 71 1f 00 00       	call   401a <close>
  if(unlink("dd") >= 0){
    20a9:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    20b0:	e8 8d 1f 00 00       	call   4042 <unlink>
    20b5:	85 c0                	test   %eax,%eax
    20b7:	0f 89 0f 06 00 00    	jns    26cc <subdir+0x69c>
  if(mkdir("/dd/dd") != 0){
    20bd:	c7 04 24 3c 4c 00 00 	movl   $0x4c3c,(%esp)
    20c4:	e8 91 1f 00 00       	call   405a <mkdir>
    20c9:	85 c0                	test   %eax,%eax
    20cb:	0f 85 9b 04 00 00    	jne    256c <subdir+0x53c>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20d1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    20d8:	00 
    20d9:	c7 04 24 5e 4c 00 00 	movl   $0x4c5e,(%esp)
    20e0:	e8 4d 1f 00 00       	call   4032 <open>
  if(fd < 0){
    20e5:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20e7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20e9:	0f 88 bd 04 00 00    	js     25ac <subdir+0x57c>
  write(fd, "FF", 2);
    20ef:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    20f6:	00 
    20f7:	c7 44 24 04 7f 4c 00 	movl   $0x4c7f,0x4(%esp)
    20fe:	00 
    20ff:	89 04 24             	mov    %eax,(%esp)
    2102:	e8 0b 1f 00 00       	call   4012 <write>
  close(fd);
    2107:	89 1c 24             	mov    %ebx,(%esp)
    210a:	e8 0b 1f 00 00       	call   401a <close>
  fd = open("dd/dd/../ff", 0);
    210f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2116:	00 
    2117:	c7 04 24 82 4c 00 00 	movl   $0x4c82,(%esp)
    211e:	e8 0f 1f 00 00       	call   4032 <open>
  if(fd < 0){
    2123:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2125:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2127:	0f 88 5f 04 00 00    	js     258c <subdir+0x55c>
  cc = read(fd, buf, sizeof(buf));
    212d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2134:	00 
    2135:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    213c:	00 
    213d:	89 04 24             	mov    %eax,(%esp)
    2140:	e8 c5 1e 00 00       	call   400a <read>
  if(cc != 2 || buf[0] != 'f'){
    2145:	83 f8 02             	cmp    $0x2,%eax
    2148:	0f 85 fe 02 00 00    	jne    244c <subdir+0x41c>
    214e:	80 3d 20 8d 00 00 66 	cmpb   $0x66,0x8d20
    2155:	0f 85 f1 02 00 00    	jne    244c <subdir+0x41c>
  close(fd);
    215b:	89 1c 24             	mov    %ebx,(%esp)
    215e:	e8 b7 1e 00 00       	call   401a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2163:	c7 44 24 04 c2 4c 00 	movl   $0x4cc2,0x4(%esp)
    216a:	00 
    216b:	c7 04 24 5e 4c 00 00 	movl   $0x4c5e,(%esp)
    2172:	e8 db 1e 00 00       	call   4052 <link>
    2177:	85 c0                	test   %eax,%eax
    2179:	0f 85 2d 07 00 00    	jne    28ac <subdir+0x87c>
  if(unlink("dd/dd/ff") != 0){
    217f:	c7 04 24 5e 4c 00 00 	movl   $0x4c5e,(%esp)
    2186:	e8 b7 1e 00 00       	call   4042 <unlink>
    218b:	85 c0                	test   %eax,%eax
    218d:	0f 85 f9 06 00 00    	jne    288c <subdir+0x85c>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2193:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    219a:	00 
    219b:	c7 04 24 5e 4c 00 00 	movl   $0x4c5e,(%esp)
    21a2:	e8 8b 1e 00 00       	call   4032 <open>
    21a7:	85 c0                	test   %eax,%eax
    21a9:	0f 89 bd 06 00 00    	jns    286c <subdir+0x83c>
  if(chdir("dd") != 0){
    21af:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    21b6:	e8 a7 1e 00 00       	call   4062 <chdir>
    21bb:	85 c0                	test   %eax,%eax
    21bd:	0f 85 89 03 00 00    	jne    254c <subdir+0x51c>
  if(chdir("dd/../../dd") != 0){
    21c3:	c7 04 24 f6 4c 00 00 	movl   $0x4cf6,(%esp)
    21ca:	e8 93 1e 00 00       	call   4062 <chdir>
    21cf:	85 c0                	test   %eax,%eax
    21d1:	0f 85 95 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("dd/../../../dd") != 0){
    21d7:	c7 04 24 1c 4d 00 00 	movl   $0x4d1c,(%esp)
    21de:	e8 7f 1e 00 00       	call   4062 <chdir>
    21e3:	85 c0                	test   %eax,%eax
    21e5:	0f 85 81 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("./..") != 0){
    21eb:	c7 04 24 2b 4d 00 00 	movl   $0x4d2b,(%esp)
    21f2:	e8 6b 1e 00 00       	call   4062 <chdir>
    21f7:	85 c0                	test   %eax,%eax
    21f9:	0f 85 6d 04 00 00    	jne    266c <subdir+0x63c>
  fd = open("dd/dd/ffff", 0);
    21ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2206:	00 
    2207:	c7 04 24 c2 4c 00 00 	movl   $0x4cc2,(%esp)
    220e:	e8 1f 1e 00 00       	call   4032 <open>
  if(fd < 0){
    2213:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2215:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2217:	0f 88 8f 04 00 00    	js     26ac <subdir+0x67c>
  if(read(fd, buf, sizeof(buf)) != 2){
    221d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2224:	00 
    2225:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    222c:	00 
    222d:	89 04 24             	mov    %eax,(%esp)
    2230:	e8 d5 1d 00 00       	call   400a <read>
    2235:	83 f8 02             	cmp    $0x2,%eax
    2238:	0f 85 4e 04 00 00    	jne    268c <subdir+0x65c>
  close(fd);
    223e:	89 1c 24             	mov    %ebx,(%esp)
    2241:	e8 d4 1d 00 00       	call   401a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2246:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    224d:	00 
    224e:	c7 04 24 5e 4c 00 00 	movl   $0x4c5e,(%esp)
    2255:	e8 d8 1d 00 00       	call   4032 <open>
    225a:	85 c0                	test   %eax,%eax
    225c:	0f 89 4a 02 00 00    	jns    24ac <subdir+0x47c>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2262:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2269:	00 
    226a:	c7 04 24 76 4d 00 00 	movl   $0x4d76,(%esp)
    2271:	e8 bc 1d 00 00       	call   4032 <open>
    2276:	85 c0                	test   %eax,%eax
    2278:	0f 89 0e 02 00 00    	jns    248c <subdir+0x45c>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    227e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2285:	00 
    2286:	c7 04 24 9b 4d 00 00 	movl   $0x4d9b,(%esp)
    228d:	e8 a0 1d 00 00       	call   4032 <open>
    2292:	85 c0                	test   %eax,%eax
    2294:	0f 89 32 02 00 00    	jns    24cc <subdir+0x49c>
  if(open("dd", O_CREATE) >= 0){
    229a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    22a1:	00 
    22a2:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    22a9:	e8 84 1d 00 00       	call   4032 <open>
    22ae:	85 c0                	test   %eax,%eax
    22b0:	0f 89 96 03 00 00    	jns    264c <subdir+0x61c>
  if(open("dd", O_RDWR) >= 0){
    22b6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    22bd:	00 
    22be:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    22c5:	e8 68 1d 00 00       	call   4032 <open>
    22ca:	85 c0                	test   %eax,%eax
    22cc:	0f 89 5a 03 00 00    	jns    262c <subdir+0x5fc>
  if(open("dd", O_WRONLY) >= 0){
    22d2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    22d9:	00 
    22da:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    22e1:	e8 4c 1d 00 00       	call   4032 <open>
    22e6:	85 c0                	test   %eax,%eax
    22e8:	0f 89 1e 03 00 00    	jns    260c <subdir+0x5dc>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    22ee:	c7 44 24 04 0a 4e 00 	movl   $0x4e0a,0x4(%esp)
    22f5:	00 
    22f6:	c7 04 24 76 4d 00 00 	movl   $0x4d76,(%esp)
    22fd:	e8 50 1d 00 00       	call   4052 <link>
    2302:	85 c0                	test   %eax,%eax
    2304:	0f 84 e2 02 00 00    	je     25ec <subdir+0x5bc>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    230a:	c7 44 24 04 0a 4e 00 	movl   $0x4e0a,0x4(%esp)
    2311:	00 
    2312:	c7 04 24 9b 4d 00 00 	movl   $0x4d9b,(%esp)
    2319:	e8 34 1d 00 00       	call   4052 <link>
    231e:	85 c0                	test   %eax,%eax
    2320:	0f 84 a6 02 00 00    	je     25cc <subdir+0x59c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2326:	c7 44 24 04 c2 4c 00 	movl   $0x4cc2,0x4(%esp)
    232d:	00 
    232e:	c7 04 24 61 4c 00 00 	movl   $0x4c61,(%esp)
    2335:	e8 18 1d 00 00       	call   4052 <link>
    233a:	85 c0                	test   %eax,%eax
    233c:	0f 84 ca 01 00 00    	je     250c <subdir+0x4dc>
  if(mkdir("dd/ff/ff") == 0){
    2342:	c7 04 24 76 4d 00 00 	movl   $0x4d76,(%esp)
    2349:	e8 0c 1d 00 00       	call   405a <mkdir>
    234e:	85 c0                	test   %eax,%eax
    2350:	0f 84 96 01 00 00    	je     24ec <subdir+0x4bc>
  if(mkdir("dd/xx/ff") == 0){
    2356:	c7 04 24 9b 4d 00 00 	movl   $0x4d9b,(%esp)
    235d:	e8 f8 1c 00 00       	call   405a <mkdir>
    2362:	85 c0                	test   %eax,%eax
    2364:	0f 84 c2 01 00 00    	je     252c <subdir+0x4fc>
  if(mkdir("dd/dd/ffff") == 0){
    236a:	c7 04 24 c2 4c 00 00 	movl   $0x4cc2,(%esp)
    2371:	e8 e4 1c 00 00       	call   405a <mkdir>
    2376:	85 c0                	test   %eax,%eax
    2378:	0f 84 ce 04 00 00    	je     284c <subdir+0x81c>
  if(unlink("dd/xx/ff") == 0){
    237e:	c7 04 24 9b 4d 00 00 	movl   $0x4d9b,(%esp)
    2385:	e8 b8 1c 00 00       	call   4042 <unlink>
    238a:	85 c0                	test   %eax,%eax
    238c:	0f 84 9a 04 00 00    	je     282c <subdir+0x7fc>
  if(unlink("dd/ff/ff") == 0){
    2392:	c7 04 24 76 4d 00 00 	movl   $0x4d76,(%esp)
    2399:	e8 a4 1c 00 00       	call   4042 <unlink>
    239e:	85 c0                	test   %eax,%eax
    23a0:	0f 84 66 04 00 00    	je     280c <subdir+0x7dc>
  if(chdir("dd/ff") == 0){
    23a6:	c7 04 24 61 4c 00 00 	movl   $0x4c61,(%esp)
    23ad:	e8 b0 1c 00 00       	call   4062 <chdir>
    23b2:	85 c0                	test   %eax,%eax
    23b4:	0f 84 32 04 00 00    	je     27ec <subdir+0x7bc>
  if(chdir("dd/xx") == 0){
    23ba:	c7 04 24 0d 4e 00 00 	movl   $0x4e0d,(%esp)
    23c1:	e8 9c 1c 00 00       	call   4062 <chdir>
    23c6:	85 c0                	test   %eax,%eax
    23c8:	0f 84 fe 03 00 00    	je     27cc <subdir+0x79c>
  if(unlink("dd/dd/ffff") != 0){
    23ce:	c7 04 24 c2 4c 00 00 	movl   $0x4cc2,(%esp)
    23d5:	e8 68 1c 00 00       	call   4042 <unlink>
    23da:	85 c0                	test   %eax,%eax
    23dc:	0f 85 ca 03 00 00    	jne    27ac <subdir+0x77c>
  if(unlink("dd/ff") != 0){
    23e2:	c7 04 24 61 4c 00 00 	movl   $0x4c61,(%esp)
    23e9:	e8 54 1c 00 00       	call   4042 <unlink>
    23ee:	85 c0                	test   %eax,%eax
    23f0:	0f 85 96 03 00 00    	jne    278c <subdir+0x75c>
  if(unlink("dd") == 0){
    23f6:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    23fd:	e8 40 1c 00 00       	call   4042 <unlink>
    2402:	85 c0                	test   %eax,%eax
    2404:	0f 84 62 03 00 00    	je     276c <subdir+0x73c>
  if(unlink("dd/dd") < 0){
    240a:	c7 04 24 3d 4c 00 00 	movl   $0x4c3d,(%esp)
    2411:	e8 2c 1c 00 00       	call   4042 <unlink>
    2416:	85 c0                	test   %eax,%eax
    2418:	0f 88 2e 03 00 00    	js     274c <subdir+0x71c>
  if(unlink("dd") < 0){
    241e:	c7 04 24 28 4d 00 00 	movl   $0x4d28,(%esp)
    2425:	e8 18 1c 00 00       	call   4042 <unlink>
    242a:	85 c0                	test   %eax,%eax
    242c:	0f 88 fa 02 00 00    	js     272c <subdir+0x6fc>
  printf(1, "subdir ok\n");
    2432:	c7 44 24 04 0a 4f 00 	movl   $0x4f0a,0x4(%esp)
    2439:	00 
    243a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2441:	e8 0a 1d 00 00       	call   4150 <printf>
}
    2446:	83 c4 14             	add    $0x14,%esp
    2449:	5b                   	pop    %ebx
    244a:	5d                   	pop    %ebp
    244b:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    244c:	c7 44 24 04 a7 4c 00 	movl   $0x4ca7,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 f0 1c 00 00       	call   4150 <printf>
    exit(1);
    2460:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2467:	e8 86 1b 00 00       	call   3ff2 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    246c:	c7 44 24 04 02 4d 00 	movl   $0x4d02,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 d0 1c 00 00       	call   4150 <printf>
    exit(1);
    2480:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2487:	e8 66 1b 00 00       	call   3ff2 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    248c:	c7 44 24 04 7f 4d 00 	movl   $0x4d7f,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 b0 1c 00 00       	call   4150 <printf>
    exit(0);
    24a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24a7:	e8 46 1b 00 00       	call   3ff2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    24ac:	c7 44 24 04 64 57 00 	movl   $0x5764,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 90 1c 00 00       	call   4150 <printf>
    exit(0);
    24c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c7:	e8 26 1b 00 00       	call   3ff2 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    24cc:	c7 44 24 04 a4 4d 00 	movl   $0x4da4,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 70 1c 00 00       	call   4150 <printf>
    exit(0);
    24e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e7:	e8 06 1b 00 00       	call   3ff2 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    24ec:	c7 44 24 04 13 4e 00 	movl   $0x4e13,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 50 1c 00 00       	call   4150 <printf>
    exit(0);
    2500:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2507:	e8 e6 1a 00 00       	call   3ff2 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    250c:	c7 44 24 04 d4 57 00 	movl   $0x57d4,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 30 1c 00 00       	call   4150 <printf>
    exit(0);
    2520:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2527:	e8 c6 1a 00 00       	call   3ff2 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    252c:	c7 44 24 04 2e 4e 00 	movl   $0x4e2e,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 10 1c 00 00       	call   4150 <printf>
    exit(0);
    2540:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2547:	e8 a6 1a 00 00       	call   3ff2 <exit>
    printf(1, "chdir dd failed\n");
    254c:	c7 44 24 04 e5 4c 00 	movl   $0x4ce5,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 f0 1b 00 00       	call   4150 <printf>
    exit(1);
    2560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2567:	e8 86 1a 00 00       	call   3ff2 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    256c:	c7 44 24 04 43 4c 00 	movl   $0x4c43,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 d0 1b 00 00       	call   4150 <printf>
    exit(1);
    2580:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2587:	e8 66 1a 00 00       	call   3ff2 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    258c:	c7 44 24 04 8e 4c 00 	movl   $0x4c8e,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 b0 1b 00 00       	call   4150 <printf>
    exit(1);
    25a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25a7:	e8 46 1a 00 00       	call   3ff2 <exit>
    printf(1, "create dd/dd/ff failed\n");
    25ac:	c7 44 24 04 67 4c 00 	movl   $0x4c67,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 90 1b 00 00       	call   4150 <printf>
    exit(1);
    25c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25c7:	e8 26 1a 00 00       	call   3ff2 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    25cc:	c7 44 24 04 b0 57 00 	movl   $0x57b0,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 70 1b 00 00       	call   4150 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 06 1a 00 00       	call   3ff2 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    25ec:	c7 44 24 04 8c 57 00 	movl   $0x578c,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 50 1b 00 00       	call   4150 <printf>
    exit(0);
    2600:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2607:	e8 e6 19 00 00       	call   3ff2 <exit>
    printf(1, "open dd wronly succeeded!\n");
    260c:	c7 44 24 04 ef 4d 00 	movl   $0x4def,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 30 1b 00 00       	call   4150 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 c6 19 00 00       	call   3ff2 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    262c:	c7 44 24 04 d6 4d 00 	movl   $0x4dd6,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 10 1b 00 00       	call   4150 <printf>
    exit(0);
    2640:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2647:	e8 a6 19 00 00       	call   3ff2 <exit>
    printf(1, "create dd succeeded!\n");
    264c:	c7 44 24 04 c0 4d 00 	movl   $0x4dc0,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 f0 1a 00 00       	call   4150 <printf>
    exit(0);
    2660:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2667:	e8 86 19 00 00       	call   3ff2 <exit>
    printf(1, "chdir ./.. failed\n");
    266c:	c7 44 24 04 30 4d 00 	movl   $0x4d30,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 d0 1a 00 00       	call   4150 <printf>
    exit(1);
    2680:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2687:	e8 66 19 00 00       	call   3ff2 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    268c:	c7 44 24 04 5b 4d 00 	movl   $0x4d5b,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 b0 1a 00 00       	call   4150 <printf>
    exit(1);
    26a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26a7:	e8 46 19 00 00       	call   3ff2 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    26ac:	c7 44 24 04 43 4d 00 	movl   $0x4d43,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 90 1a 00 00       	call   4150 <printf>
    exit(1);
    26c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26c7:	e8 26 19 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    26cc:	c7 44 24 04 f4 56 00 	movl   $0x56f4,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 70 1a 00 00       	call   4150 <printf>
    exit(1);
    26e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26e7:	e8 06 19 00 00       	call   3ff2 <exit>
    printf(1, "create dd/ff failed\n");
    26ec:	c7 44 24 04 27 4c 00 	movl   $0x4c27,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 50 1a 00 00       	call   4150 <printf>
    exit(1);
    2700:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2707:	e8 e6 18 00 00       	call   3ff2 <exit>
    printf(1, "subdir mkdir dd failed\n");
    270c:	c7 44 24 04 0f 4c 00 	movl   $0x4c0f,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 30 1a 00 00       	call   4150 <printf>
    exit(1);
    2720:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2727:	e8 c6 18 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd failed\n");
    272c:	c7 44 24 04 f8 4e 00 	movl   $0x4ef8,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 10 1a 00 00       	call   4150 <printf>
    exit(1);
    2740:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2747:	e8 a6 18 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/dd failed\n");
    274c:	c7 44 24 04 e3 4e 00 	movl   $0x4ee3,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 f0 19 00 00       	call   4150 <printf>
    exit(1);
    2760:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2767:	e8 86 18 00 00       	call   3ff2 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    276c:	c7 44 24 04 f8 57 00 	movl   $0x57f8,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 d0 19 00 00       	call   4150 <printf>
    exit(0);
    2780:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2787:	e8 66 18 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/ff failed\n");
    278c:	c7 44 24 04 ce 4e 00 	movl   $0x4ece,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 b0 19 00 00       	call   4150 <printf>
    exit(0);
    27a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a7:	e8 46 18 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    27ac:	c7 44 24 04 cd 4c 00 	movl   $0x4ccd,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 90 19 00 00       	call   4150 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 26 18 00 00       	call   3ff2 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    27cc:	c7 44 24 04 b6 4e 00 	movl   $0x4eb6,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 70 19 00 00       	call   4150 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 06 18 00 00       	call   3ff2 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    27ec:	c7 44 24 04 9e 4e 00 	movl   $0x4e9e,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 50 19 00 00       	call   4150 <printf>
    exit(0);
    2800:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2807:	e8 e6 17 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    280c:	c7 44 24 04 82 4e 00 	movl   $0x4e82,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 30 19 00 00       	call   4150 <printf>
    exit(0);
    2820:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2827:	e8 c6 17 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    282c:	c7 44 24 04 66 4e 00 	movl   $0x4e66,0x4(%esp)
    2833:	00 
    2834:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    283b:	e8 10 19 00 00       	call   4150 <printf>
    exit(0);
    2840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2847:	e8 a6 17 00 00       	call   3ff2 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    284c:	c7 44 24 04 49 4e 00 	movl   $0x4e49,0x4(%esp)
    2853:	00 
    2854:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    285b:	e8 f0 18 00 00       	call   4150 <printf>
    exit(0);
    2860:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2867:	e8 86 17 00 00       	call   3ff2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    286c:	c7 44 24 04 40 57 00 	movl   $0x5740,0x4(%esp)
    2873:	00 
    2874:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    287b:	e8 d0 18 00 00       	call   4150 <printf>
    exit(0);
    2880:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2887:	e8 66 17 00 00       	call   3ff2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    288c:	c7 44 24 04 cd 4c 00 	movl   $0x4ccd,0x4(%esp)
    2893:	00 
    2894:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    289b:	e8 b0 18 00 00       	call   4150 <printf>
    exit(1);
    28a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28a7:	e8 46 17 00 00       	call   3ff2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    28ac:	c7 44 24 04 1c 57 00 	movl   $0x571c,0x4(%esp)
    28b3:	00 
    28b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28bb:	e8 90 18 00 00       	call   4150 <printf>
    exit(1);
    28c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28c7:	e8 26 17 00 00       	call   3ff2 <exit>
    28cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000028d0 <bigwrite>:
{
    28d0:	55                   	push   %ebp
    28d1:	89 e5                	mov    %esp,%ebp
    28d3:	56                   	push   %esi
    28d4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    28d5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    28da:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    28dd:	c7 44 24 04 15 4f 00 	movl   $0x4f15,0x4(%esp)
    28e4:	00 
    28e5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28ec:	e8 5f 18 00 00       	call   4150 <printf>
  unlink("bigwrite");
    28f1:	c7 04 24 24 4f 00 00 	movl   $0x4f24,(%esp)
    28f8:	e8 45 17 00 00       	call   4042 <unlink>
    28fd:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2900:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2907:	00 
    2908:	c7 04 24 24 4f 00 00 	movl   $0x4f24,(%esp)
    290f:	e8 1e 17 00 00       	call   4032 <open>
    if(fd < 0){
    2914:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2916:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2918:	0f 88 95 00 00 00    	js     29b3 <bigwrite+0xe3>
      int cc = write(fd, buf, sz);
    291e:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2922:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    2929:	00 
    292a:	89 04 24             	mov    %eax,(%esp)
    292d:	e8 e0 16 00 00       	call   4012 <write>
      if(cc != sz){
    2932:	39 d8                	cmp    %ebx,%eax
    2934:	75 55                	jne    298b <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    2936:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    293a:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    2941:	00 
    2942:	89 34 24             	mov    %esi,(%esp)
    2945:	e8 c8 16 00 00       	call   4012 <write>
      if(cc != sz){
    294a:	39 c3                	cmp    %eax,%ebx
    294c:	75 3d                	jne    298b <bigwrite+0xbb>
    close(fd);
    294e:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2951:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2957:	e8 be 16 00 00       	call   401a <close>
    unlink("bigwrite");
    295c:	c7 04 24 24 4f 00 00 	movl   $0x4f24,(%esp)
    2963:	e8 da 16 00 00       	call   4042 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2968:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    296e:	75 90                	jne    2900 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2970:	c7 44 24 04 57 4f 00 	movl   $0x4f57,0x4(%esp)
    2977:	00 
    2978:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    297f:	e8 cc 17 00 00       	call   4150 <printf>
}
    2984:	83 c4 10             	add    $0x10,%esp
    2987:	5b                   	pop    %ebx
    2988:	5e                   	pop    %esi
    2989:	5d                   	pop    %ebp
    298a:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    298b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    298f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2993:	c7 44 24 04 45 4f 00 	movl   $0x4f45,0x4(%esp)
    299a:	00 
    299b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a2:	e8 a9 17 00 00       	call   4150 <printf>
        exit(0);
    29a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ae:	e8 3f 16 00 00       	call   3ff2 <exit>
      printf(1, "cannot create bigwrite\n");
    29b3:	c7 44 24 04 2d 4f 00 	movl   $0x4f2d,0x4(%esp)
    29ba:	00 
    29bb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29c2:	e8 89 17 00 00       	call   4150 <printf>
      exit(1);
    29c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29ce:	e8 1f 16 00 00       	call   3ff2 <exit>
    29d3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    29d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000029e0 <bigfile>:
{
    29e0:	55                   	push   %ebp
    29e1:	89 e5                	mov    %esp,%ebp
    29e3:	57                   	push   %edi
    29e4:	56                   	push   %esi
    29e5:	53                   	push   %ebx
    29e6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    29e9:	c7 44 24 04 64 4f 00 	movl   $0x4f64,0x4(%esp)
    29f0:	00 
    29f1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29f8:	e8 53 17 00 00       	call   4150 <printf>
  unlink("bigfile");
    29fd:	c7 04 24 80 4f 00 00 	movl   $0x4f80,(%esp)
    2a04:	e8 39 16 00 00       	call   4042 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    2a09:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2a10:	00 
    2a11:	c7 04 24 80 4f 00 00 	movl   $0x4f80,(%esp)
    2a18:	e8 15 16 00 00       	call   4032 <open>
  if(fd < 0){
    2a1d:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    2a1f:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a21:	0f 88 a2 01 00 00    	js     2bc9 <bigfile+0x1e9>
    2a27:	31 db                	xor    %ebx,%ebx
    2a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2a30:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a37:	00 
    2a38:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    2a3c:	c7 04 24 20 8d 00 00 	movl   $0x8d20,(%esp)
    2a43:	e8 38 14 00 00       	call   3e80 <memset>
    if(write(fd, buf, 600) != 600){
    2a48:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a4f:	00 
    2a50:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    2a57:	00 
    2a58:	89 34 24             	mov    %esi,(%esp)
    2a5b:	e8 b2 15 00 00       	call   4012 <write>
    2a60:	3d 58 02 00 00       	cmp    $0x258,%eax
    2a65:	0f 85 1e 01 00 00    	jne    2b89 <bigfile+0x1a9>
  for(i = 0; i < 20; i++){
    2a6b:	83 c3 01             	add    $0x1,%ebx
    2a6e:	83 fb 14             	cmp    $0x14,%ebx
    2a71:	75 bd                	jne    2a30 <bigfile+0x50>
  close(fd);
    2a73:	89 34 24             	mov    %esi,(%esp)
    2a76:	e8 9f 15 00 00       	call   401a <close>
  fd = open("bigfile", 0);
    2a7b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a82:	00 
    2a83:	c7 04 24 80 4f 00 00 	movl   $0x4f80,(%esp)
    2a8a:	e8 a3 15 00 00       	call   4032 <open>
  if(fd < 0){
    2a8f:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2a91:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a93:	0f 88 10 01 00 00    	js     2ba9 <bigfile+0x1c9>
    2a99:	31 db                	xor    %ebx,%ebx
    2a9b:	31 ff                	xor    %edi,%edi
    2a9d:	eb 2f                	jmp    2ace <bigfile+0xee>
    2a9f:	90                   	nop
    if(cc != 300){
    2aa0:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2aa5:	0f 85 9e 00 00 00    	jne    2b49 <bigfile+0x169>
    if(buf[0] != i/2 || buf[299] != i/2){
    2aab:	0f be 05 20 8d 00 00 	movsbl 0x8d20,%eax
    2ab2:	89 fa                	mov    %edi,%edx
    2ab4:	d1 fa                	sar    %edx
    2ab6:	39 d0                	cmp    %edx,%eax
    2ab8:	75 6f                	jne    2b29 <bigfile+0x149>
    2aba:	0f be 15 4b 8e 00 00 	movsbl 0x8e4b,%edx
    2ac1:	39 d0                	cmp    %edx,%eax
    2ac3:	75 64                	jne    2b29 <bigfile+0x149>
    total += cc;
    2ac5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2acb:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2ace:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2ad5:	00 
    2ad6:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    2add:	00 
    2ade:	89 34 24             	mov    %esi,(%esp)
    2ae1:	e8 24 15 00 00       	call   400a <read>
    if(cc < 0){
    2ae6:	85 c0                	test   %eax,%eax
    2ae8:	78 7f                	js     2b69 <bigfile+0x189>
    if(cc == 0)
    2aea:	75 b4                	jne    2aa0 <bigfile+0xc0>
  close(fd);
    2aec:	89 34 24             	mov    %esi,(%esp)
    2aef:	90                   	nop
    2af0:	e8 25 15 00 00       	call   401a <close>
  if(total != 20*600){
    2af5:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2afb:	0f 85 e8 00 00 00    	jne    2be9 <bigfile+0x209>
  unlink("bigfile");
    2b01:	c7 04 24 80 4f 00 00 	movl   $0x4f80,(%esp)
    2b08:	e8 35 15 00 00       	call   4042 <unlink>
  printf(1, "bigfile test ok\n");
    2b0d:	c7 44 24 04 0f 50 00 	movl   $0x500f,0x4(%esp)
    2b14:	00 
    2b15:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b1c:	e8 2f 16 00 00       	call   4150 <printf>
}
    2b21:	83 c4 1c             	add    $0x1c,%esp
    2b24:	5b                   	pop    %ebx
    2b25:	5e                   	pop    %esi
    2b26:	5f                   	pop    %edi
    2b27:	5d                   	pop    %ebp
    2b28:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2b29:	c7 44 24 04 dc 4f 00 	movl   $0x4fdc,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 13 16 00 00       	call   4150 <printf>
      exit(1);
    2b3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b44:	e8 a9 14 00 00       	call   3ff2 <exit>
      printf(1, "short read bigfile\n");
    2b49:	c7 44 24 04 c8 4f 00 	movl   $0x4fc8,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 f3 15 00 00       	call   4150 <printf>
      exit(1);
    2b5d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b64:	e8 89 14 00 00       	call   3ff2 <exit>
      printf(1, "read bigfile failed\n");
    2b69:	c7 44 24 04 b3 4f 00 	movl   $0x4fb3,0x4(%esp)
    2b70:	00 
    2b71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b78:	e8 d3 15 00 00       	call   4150 <printf>
      exit(1);
    2b7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b84:	e8 69 14 00 00       	call   3ff2 <exit>
      printf(1, "write bigfile failed\n");
    2b89:	c7 44 24 04 88 4f 00 	movl   $0x4f88,0x4(%esp)
    2b90:	00 
    2b91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b98:	e8 b3 15 00 00       	call   4150 <printf>
      exit(1);
    2b9d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ba4:	e8 49 14 00 00       	call   3ff2 <exit>
    printf(1, "cannot open bigfile\n");
    2ba9:	c7 44 24 04 9e 4f 00 	movl   $0x4f9e,0x4(%esp)
    2bb0:	00 
    2bb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bb8:	e8 93 15 00 00       	call   4150 <printf>
    exit(1);
    2bbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bc4:	e8 29 14 00 00       	call   3ff2 <exit>
    printf(1, "cannot create bigfile");
    2bc9:	c7 44 24 04 72 4f 00 	movl   $0x4f72,0x4(%esp)
    2bd0:	00 
    2bd1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bd8:	e8 73 15 00 00       	call   4150 <printf>
    exit(1);
    2bdd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2be4:	e8 09 14 00 00       	call   3ff2 <exit>
    printf(1, "read bigfile wrong total\n");
    2be9:	c7 44 24 04 f5 4f 00 	movl   $0x4ff5,0x4(%esp)
    2bf0:	00 
    2bf1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bf8:	e8 53 15 00 00       	call   4150 <printf>
    exit(1);
    2bfd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c04:	e8 e9 13 00 00       	call   3ff2 <exit>
    2c09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002c10 <fourteen>:
{
    2c10:	55                   	push   %ebp
    2c11:	89 e5                	mov    %esp,%ebp
    2c13:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2c16:	c7 44 24 04 20 50 00 	movl   $0x5020,0x4(%esp)
    2c1d:	00 
    2c1e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c25:	e8 26 15 00 00       	call   4150 <printf>
  if(mkdir("12345678901234") != 0){
    2c2a:	c7 04 24 5b 50 00 00 	movl   $0x505b,(%esp)
    2c31:	e8 24 14 00 00       	call   405a <mkdir>
    2c36:	85 c0                	test   %eax,%eax
    2c38:	0f 85 92 00 00 00    	jne    2cd0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2c3e:	c7 04 24 18 58 00 00 	movl   $0x5818,(%esp)
    2c45:	e8 10 14 00 00       	call   405a <mkdir>
    2c4a:	85 c0                	test   %eax,%eax
    2c4c:	0f 85 1e 01 00 00    	jne    2d70 <fourteen+0x160>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2c52:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2c59:	00 
    2c5a:	c7 04 24 68 58 00 00 	movl   $0x5868,(%esp)
    2c61:	e8 cc 13 00 00       	call   4032 <open>
  if(fd < 0){
    2c66:	85 c0                	test   %eax,%eax
    2c68:	0f 88 e2 00 00 00    	js     2d50 <fourteen+0x140>
  close(fd);
    2c6e:	89 04 24             	mov    %eax,(%esp)
    2c71:	e8 a4 13 00 00       	call   401a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2c76:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c7d:	00 
    2c7e:	c7 04 24 d8 58 00 00 	movl   $0x58d8,(%esp)
    2c85:	e8 a8 13 00 00       	call   4032 <open>
  if(fd < 0){
    2c8a:	85 c0                	test   %eax,%eax
    2c8c:	0f 88 9e 00 00 00    	js     2d30 <fourteen+0x120>
  close(fd);
    2c92:	89 04 24             	mov    %eax,(%esp)
    2c95:	e8 80 13 00 00       	call   401a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2c9a:	c7 04 24 4c 50 00 00 	movl   $0x504c,(%esp)
    2ca1:	e8 b4 13 00 00       	call   405a <mkdir>
    2ca6:	85 c0                	test   %eax,%eax
    2ca8:	74 66                	je     2d10 <fourteen+0x100>
  if(mkdir("123456789012345/12345678901234") == 0){
    2caa:	c7 04 24 74 59 00 00 	movl   $0x5974,(%esp)
    2cb1:	e8 a4 13 00 00       	call   405a <mkdir>
    2cb6:	85 c0                	test   %eax,%eax
    2cb8:	74 36                	je     2cf0 <fourteen+0xe0>
  printf(1, "fourteen ok\n");
    2cba:	c7 44 24 04 6a 50 00 	movl   $0x506a,0x4(%esp)
    2cc1:	00 
    2cc2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cc9:	e8 82 14 00 00       	call   4150 <printf>
}
    2cce:	c9                   	leave  
    2ccf:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2cd0:	c7 44 24 04 2f 50 00 	movl   $0x502f,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 6c 14 00 00       	call   4150 <printf>
    exit(1);
    2ce4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ceb:	e8 02 13 00 00       	call   3ff2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2cf0:	c7 44 24 04 94 59 00 	movl   $0x5994,0x4(%esp)
    2cf7:	00 
    2cf8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cff:	e8 4c 14 00 00       	call   4150 <printf>
    exit(0);
    2d04:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0b:	e8 e2 12 00 00       	call   3ff2 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2d10:	c7 44 24 04 44 59 00 	movl   $0x5944,0x4(%esp)
    2d17:	00 
    2d18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d1f:	e8 2c 14 00 00       	call   4150 <printf>
    exit(0);
    2d24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d2b:	e8 c2 12 00 00       	call   3ff2 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2d30:	c7 44 24 04 08 59 00 	movl   $0x5908,0x4(%esp)
    2d37:	00 
    2d38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d3f:	e8 0c 14 00 00       	call   4150 <printf>
    exit(1);
    2d44:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d4b:	e8 a2 12 00 00       	call   3ff2 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2d50:	c7 44 24 04 98 58 00 	movl   $0x5898,0x4(%esp)
    2d57:	00 
    2d58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d5f:	e8 ec 13 00 00       	call   4150 <printf>
    exit(1);
    2d64:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d6b:	e8 82 12 00 00       	call   3ff2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2d70:	c7 44 24 04 38 58 00 	movl   $0x5838,0x4(%esp)
    2d77:	00 
    2d78:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d7f:	e8 cc 13 00 00       	call   4150 <printf>
    exit(1);
    2d84:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d8b:	e8 62 12 00 00       	call   3ff2 <exit>

00002d90 <rmdot>:
{
    2d90:	55                   	push   %ebp
    2d91:	89 e5                	mov    %esp,%ebp
    2d93:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2d96:	c7 44 24 04 77 50 00 	movl   $0x5077,0x4(%esp)
    2d9d:	00 
    2d9e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2da5:	e8 a6 13 00 00       	call   4150 <printf>
  if(mkdir("dots") != 0){
    2daa:	c7 04 24 83 50 00 00 	movl   $0x5083,(%esp)
    2db1:	e8 a4 12 00 00       	call   405a <mkdir>
    2db6:	85 c0                	test   %eax,%eax
    2db8:	0f 85 9a 00 00 00    	jne    2e58 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2dbe:	c7 04 24 83 50 00 00 	movl   $0x5083,(%esp)
    2dc5:	e8 98 12 00 00       	call   4062 <chdir>
    2dca:	85 c0                	test   %eax,%eax
    2dcc:	0f 85 66 01 00 00    	jne    2f38 <rmdot+0x1a8>
  if(unlink(".") == 0){
    2dd2:	c7 04 24 2e 4d 00 00 	movl   $0x4d2e,(%esp)
    2dd9:	e8 64 12 00 00       	call   4042 <unlink>
    2dde:	85 c0                	test   %eax,%eax
    2de0:	0f 84 32 01 00 00    	je     2f18 <rmdot+0x188>
  if(unlink("..") == 0){
    2de6:	c7 04 24 2d 4d 00 00 	movl   $0x4d2d,(%esp)
    2ded:	e8 50 12 00 00       	call   4042 <unlink>
    2df2:	85 c0                	test   %eax,%eax
    2df4:	0f 84 fe 00 00 00    	je     2ef8 <rmdot+0x168>
  if(chdir("/") != 0){
    2dfa:	c7 04 24 01 45 00 00 	movl   $0x4501,(%esp)
    2e01:	e8 5c 12 00 00       	call   4062 <chdir>
    2e06:	85 c0                	test   %eax,%eax
    2e08:	0f 85 ca 00 00 00    	jne    2ed8 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    2e0e:	c7 04 24 cb 50 00 00 	movl   $0x50cb,(%esp)
    2e15:	e8 28 12 00 00       	call   4042 <unlink>
    2e1a:	85 c0                	test   %eax,%eax
    2e1c:	0f 84 96 00 00 00    	je     2eb8 <rmdot+0x128>
  if(unlink("dots/..") == 0){
    2e22:	c7 04 24 e9 50 00 00 	movl   $0x50e9,(%esp)
    2e29:	e8 14 12 00 00       	call   4042 <unlink>
    2e2e:	85 c0                	test   %eax,%eax
    2e30:	74 66                	je     2e98 <rmdot+0x108>
  if(unlink("dots") != 0){
    2e32:	c7 04 24 83 50 00 00 	movl   $0x5083,(%esp)
    2e39:	e8 04 12 00 00       	call   4042 <unlink>
    2e3e:	85 c0                	test   %eax,%eax
    2e40:	75 36                	jne    2e78 <rmdot+0xe8>
  printf(1, "rmdot ok\n");
    2e42:	c7 44 24 04 1e 51 00 	movl   $0x511e,0x4(%esp)
    2e49:	00 
    2e4a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e51:	e8 fa 12 00 00       	call   4150 <printf>
}
    2e56:	c9                   	leave  
    2e57:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2e58:	c7 44 24 04 88 50 00 	movl   $0x5088,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 e4 12 00 00       	call   4150 <printf>
    exit(1);
    2e6c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e73:	e8 7a 11 00 00       	call   3ff2 <exit>
    printf(1, "unlink dots failed!\n");
    2e78:	c7 44 24 04 09 51 00 	movl   $0x5109,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 c4 12 00 00       	call   4150 <printf>
    exit(1);
    2e8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e93:	e8 5a 11 00 00       	call   3ff2 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2e98:	c7 44 24 04 f1 50 00 	movl   $0x50f1,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 a4 12 00 00       	call   4150 <printf>
    exit(1);
    2eac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2eb3:	e8 3a 11 00 00       	call   3ff2 <exit>
    printf(1, "unlink dots/. worked!\n");
    2eb8:	c7 44 24 04 d2 50 00 	movl   $0x50d2,0x4(%esp)
    2ebf:	00 
    2ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ec7:	e8 84 12 00 00       	call   4150 <printf>
    exit(1);
    2ecc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ed3:	e8 1a 11 00 00       	call   3ff2 <exit>
    printf(1, "chdir / failed\n");
    2ed8:	c7 44 24 04 03 45 00 	movl   $0x4503,0x4(%esp)
    2edf:	00 
    2ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee7:	e8 64 12 00 00       	call   4150 <printf>
    exit(1);
    2eec:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ef3:	e8 fa 10 00 00       	call   3ff2 <exit>
    printf(1, "rm .. worked!\n");
    2ef8:	c7 44 24 04 bc 50 00 	movl   $0x50bc,0x4(%esp)
    2eff:	00 
    2f00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f07:	e8 44 12 00 00       	call   4150 <printf>
    exit(1);
    2f0c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f13:	e8 da 10 00 00       	call   3ff2 <exit>
    printf(1, "rm . worked!\n");
    2f18:	c7 44 24 04 ae 50 00 	movl   $0x50ae,0x4(%esp)
    2f1f:	00 
    2f20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f27:	e8 24 12 00 00       	call   4150 <printf>
    exit(1);
    2f2c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f33:	e8 ba 10 00 00       	call   3ff2 <exit>
    printf(1, "chdir dots failed\n");
    2f38:	c7 44 24 04 9b 50 00 	movl   $0x509b,0x4(%esp)
    2f3f:	00 
    2f40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f47:	e8 04 12 00 00       	call   4150 <printf>
    exit(1);
    2f4c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f53:	e8 9a 10 00 00       	call   3ff2 <exit>
    2f58:	90                   	nop
    2f59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002f60 <dirfile>:
{
    2f60:	55                   	push   %ebp
    2f61:	89 e5                	mov    %esp,%ebp
    2f63:	53                   	push   %ebx
    2f64:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2f67:	c7 44 24 04 28 51 00 	movl   $0x5128,0x4(%esp)
    2f6e:	00 
    2f6f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f76:	e8 d5 11 00 00       	call   4150 <printf>
  fd = open("dirfile", O_CREATE);
    2f7b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f82:	00 
    2f83:	c7 04 24 35 51 00 00 	movl   $0x5135,(%esp)
    2f8a:	e8 a3 10 00 00       	call   4032 <open>
  if(fd < 0){
    2f8f:	85 c0                	test   %eax,%eax
    2f91:	0f 88 60 01 00 00    	js     30f7 <dirfile+0x197>
  close(fd);
    2f97:	89 04 24             	mov    %eax,(%esp)
    2f9a:	e8 7b 10 00 00       	call   401a <close>
  if(chdir("dirfile") == 0){
    2f9f:	c7 04 24 35 51 00 00 	movl   $0x5135,(%esp)
    2fa6:	e8 b7 10 00 00       	call   4062 <chdir>
    2fab:	85 c0                	test   %eax,%eax
    2fad:	0f 84 24 01 00 00    	je     30d7 <dirfile+0x177>
  fd = open("dirfile/xx", 0);
    2fb3:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2fba:	00 
    2fbb:	c7 04 24 6e 51 00 00 	movl   $0x516e,(%esp)
    2fc2:	e8 6b 10 00 00       	call   4032 <open>
  if(fd >= 0){
    2fc7:	85 c0                	test   %eax,%eax
    2fc9:	0f 89 e8 00 00 00    	jns    30b7 <dirfile+0x157>
  fd = open("dirfile/xx", O_CREATE);
    2fcf:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2fd6:	00 
    2fd7:	c7 04 24 6e 51 00 00 	movl   $0x516e,(%esp)
    2fde:	e8 4f 10 00 00       	call   4032 <open>
  if(fd >= 0){
    2fe3:	85 c0                	test   %eax,%eax
    2fe5:	0f 89 cc 00 00 00    	jns    30b7 <dirfile+0x157>
  if(mkdir("dirfile/xx") == 0){
    2feb:	c7 04 24 6e 51 00 00 	movl   $0x516e,(%esp)
    2ff2:	e8 63 10 00 00       	call   405a <mkdir>
    2ff7:	85 c0                	test   %eax,%eax
    2ff9:	0f 84 b8 01 00 00    	je     31b7 <dirfile+0x257>
  if(unlink("dirfile/xx") == 0){
    2fff:	c7 04 24 6e 51 00 00 	movl   $0x516e,(%esp)
    3006:	e8 37 10 00 00       	call   4042 <unlink>
    300b:	85 c0                	test   %eax,%eax
    300d:	0f 84 84 01 00 00    	je     3197 <dirfile+0x237>
  if(link("README", "dirfile/xx") == 0){
    3013:	c7 44 24 04 6e 51 00 	movl   $0x516e,0x4(%esp)
    301a:	00 
    301b:	c7 04 24 d2 51 00 00 	movl   $0x51d2,(%esp)
    3022:	e8 2b 10 00 00       	call   4052 <link>
    3027:	85 c0                	test   %eax,%eax
    3029:	0f 84 48 01 00 00    	je     3177 <dirfile+0x217>
  if(unlink("dirfile") != 0){
    302f:	c7 04 24 35 51 00 00 	movl   $0x5135,(%esp)
    3036:	e8 07 10 00 00       	call   4042 <unlink>
    303b:	85 c0                	test   %eax,%eax
    303d:	0f 85 14 01 00 00    	jne    3157 <dirfile+0x1f7>
  fd = open(".", O_RDWR);
    3043:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    304a:	00 
    304b:	c7 04 24 2e 4d 00 00 	movl   $0x4d2e,(%esp)
    3052:	e8 db 0f 00 00       	call   4032 <open>
  if(fd >= 0){
    3057:	85 c0                	test   %eax,%eax
    3059:	0f 89 d8 00 00 00    	jns    3137 <dirfile+0x1d7>
  fd = open(".", 0);
    305f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3066:	00 
    3067:	c7 04 24 2e 4d 00 00 	movl   $0x4d2e,(%esp)
    306e:	e8 bf 0f 00 00       	call   4032 <open>
  if(write(fd, "x", 1) > 0){
    3073:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    307a:	00 
    307b:	c7 44 24 04 11 4e 00 	movl   $0x4e11,0x4(%esp)
    3082:	00 
    3083:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    3086:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3088:	e8 85 0f 00 00       	call   4012 <write>
    308d:	85 c0                	test   %eax,%eax
    308f:	0f 8f 82 00 00 00    	jg     3117 <dirfile+0x1b7>
  close(fd);
    3095:	89 1c 24             	mov    %ebx,(%esp)
    3098:	e8 7d 0f 00 00       	call   401a <close>
  printf(1, "dir vs file OK\n");
    309d:	c7 44 24 04 05 52 00 	movl   $0x5205,0x4(%esp)
    30a4:	00 
    30a5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30ac:	e8 9f 10 00 00       	call   4150 <printf>
}
    30b1:	83 c4 14             	add    $0x14,%esp
    30b4:	5b                   	pop    %ebx
    30b5:	5d                   	pop    %ebp
    30b6:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    30b7:	c7 44 24 04 79 51 00 	movl   $0x5179,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 85 10 00 00       	call   4150 <printf>
    exit(0);
    30cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d2:	e8 1b 0f 00 00       	call   3ff2 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    30d7:	c7 44 24 04 54 51 00 	movl   $0x5154,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 65 10 00 00       	call   4150 <printf>
    exit(0);
    30eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f2:	e8 fb 0e 00 00       	call   3ff2 <exit>
    printf(1, "create dirfile failed\n");
    30f7:	c7 44 24 04 3d 51 00 	movl   $0x513d,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 45 10 00 00       	call   4150 <printf>
    exit(1);
    310b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3112:	e8 db 0e 00 00       	call   3ff2 <exit>
    printf(1, "write . succeeded!\n");
    3117:	c7 44 24 04 f1 51 00 	movl   $0x51f1,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 25 10 00 00       	call   4150 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 bb 0e 00 00       	call   3ff2 <exit>
    printf(1, "open . for writing succeeded!\n");
    3137:	c7 44 24 04 e8 59 00 	movl   $0x59e8,0x4(%esp)
    313e:	00 
    313f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3146:	e8 05 10 00 00       	call   4150 <printf>
    exit(0);
    314b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3152:	e8 9b 0e 00 00       	call   3ff2 <exit>
    printf(1, "unlink dirfile failed!\n");
    3157:	c7 44 24 04 d9 51 00 	movl   $0x51d9,0x4(%esp)
    315e:	00 
    315f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3166:	e8 e5 0f 00 00       	call   4150 <printf>
    exit(1);
    316b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3172:	e8 7b 0e 00 00       	call   3ff2 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3177:	c7 44 24 04 c8 59 00 	movl   $0x59c8,0x4(%esp)
    317e:	00 
    317f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3186:	e8 c5 0f 00 00       	call   4150 <printf>
    exit(0);
    318b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3192:	e8 5b 0e 00 00       	call   3ff2 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3197:	c7 44 24 04 b4 51 00 	movl   $0x51b4,0x4(%esp)
    319e:	00 
    319f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31a6:	e8 a5 0f 00 00       	call   4150 <printf>
    exit(0);
    31ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31b2:	e8 3b 0e 00 00       	call   3ff2 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    31b7:	c7 44 24 04 97 51 00 	movl   $0x5197,0x4(%esp)
    31be:	00 
    31bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31c6:	e8 85 0f 00 00       	call   4150 <printf>
    exit(0);
    31cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31d2:	e8 1b 0e 00 00       	call   3ff2 <exit>
    31d7:	89 f6                	mov    %esi,%esi
    31d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000031e0 <iref>:
{
    31e0:	55                   	push   %ebp
    31e1:	89 e5                	mov    %esp,%ebp
    31e3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    31e4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    31e9:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    31ec:	c7 44 24 04 15 52 00 	movl   $0x5215,0x4(%esp)
    31f3:	00 
    31f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31fb:	e8 50 0f 00 00       	call   4150 <printf>
    if(mkdir("irefd") != 0){
    3200:	c7 04 24 26 52 00 00 	movl   $0x5226,(%esp)
    3207:	e8 4e 0e 00 00       	call   405a <mkdir>
    320c:	85 c0                	test   %eax,%eax
    320e:	0f 85 af 00 00 00    	jne    32c3 <iref+0xe3>
    if(chdir("irefd") != 0){
    3214:	c7 04 24 26 52 00 00 	movl   $0x5226,(%esp)
    321b:	e8 42 0e 00 00       	call   4062 <chdir>
    3220:	85 c0                	test   %eax,%eax
    3222:	0f 85 bb 00 00 00    	jne    32e3 <iref+0x103>
    mkdir("");
    3228:	c7 04 24 db 48 00 00 	movl   $0x48db,(%esp)
    322f:	e8 26 0e 00 00       	call   405a <mkdir>
    link("README", "");
    3234:	c7 44 24 04 db 48 00 	movl   $0x48db,0x4(%esp)
    323b:	00 
    323c:	c7 04 24 d2 51 00 00 	movl   $0x51d2,(%esp)
    3243:	e8 0a 0e 00 00       	call   4052 <link>
    fd = open("", O_CREATE);
    3248:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    324f:	00 
    3250:	c7 04 24 db 48 00 00 	movl   $0x48db,(%esp)
    3257:	e8 d6 0d 00 00       	call   4032 <open>
    if(fd >= 0)
    325c:	85 c0                	test   %eax,%eax
    325e:	78 08                	js     3268 <iref+0x88>
      close(fd);
    3260:	89 04 24             	mov    %eax,(%esp)
    3263:	e8 b2 0d 00 00       	call   401a <close>
    fd = open("xx", O_CREATE);
    3268:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    326f:	00 
    3270:	c7 04 24 10 4e 00 00 	movl   $0x4e10,(%esp)
    3277:	e8 b6 0d 00 00       	call   4032 <open>
    if(fd >= 0)
    327c:	85 c0                	test   %eax,%eax
    327e:	78 08                	js     3288 <iref+0xa8>
      close(fd);
    3280:	89 04 24             	mov    %eax,(%esp)
    3283:	e8 92 0d 00 00       	call   401a <close>
    unlink("xx");
    3288:	c7 04 24 10 4e 00 00 	movl   $0x4e10,(%esp)
    328f:	e8 ae 0d 00 00       	call   4042 <unlink>
  for(i = 0; i < 50 + 1; i++){
    3294:	83 eb 01             	sub    $0x1,%ebx
    3297:	0f 85 63 ff ff ff    	jne    3200 <iref+0x20>
  chdir("/");
    329d:	c7 04 24 01 45 00 00 	movl   $0x4501,(%esp)
    32a4:	e8 b9 0d 00 00       	call   4062 <chdir>
  printf(1, "empty file name OK\n");
    32a9:	c7 44 24 04 54 52 00 	movl   $0x5254,0x4(%esp)
    32b0:	00 
    32b1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32b8:	e8 93 0e 00 00       	call   4150 <printf>
}
    32bd:	83 c4 14             	add    $0x14,%esp
    32c0:	5b                   	pop    %ebx
    32c1:	5d                   	pop    %ebp
    32c2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    32c3:	c7 44 24 04 2c 52 00 	movl   $0x522c,0x4(%esp)
    32ca:	00 
    32cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32d2:	e8 79 0e 00 00       	call   4150 <printf>
      exit(1);
    32d7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32de:	e8 0f 0d 00 00       	call   3ff2 <exit>
      printf(1, "chdir irefd failed\n");
    32e3:	c7 44 24 04 40 52 00 	movl   $0x5240,0x4(%esp)
    32ea:	00 
    32eb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32f2:	e8 59 0e 00 00       	call   4150 <printf>
      exit(1);
    32f7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32fe:	e8 ef 0c 00 00       	call   3ff2 <exit>
    3303:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003310 <forktest>:
{
    3310:	55                   	push   %ebp
    3311:	89 e5                	mov    %esp,%ebp
    3313:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3314:	31 db                	xor    %ebx,%ebx
{
    3316:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    3319:	c7 44 24 04 68 52 00 	movl   $0x5268,0x4(%esp)
    3320:	00 
    3321:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3328:	e8 23 0e 00 00       	call   4150 <printf>
    332d:	eb 0e                	jmp    333d <forktest+0x2d>
    332f:	90                   	nop
    if(pid == 0)
    3330:	74 72                	je     33a4 <forktest+0x94>
  for(n=0; n<1000; n++){
    3332:	83 c3 01             	add    $0x1,%ebx
    3335:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    333b:	74 53                	je     3390 <forktest+0x80>
    pid = fork();
    333d:	e8 a8 0c 00 00       	call   3fea <fork>
    if(pid < 0)
    3342:	85 c0                	test   %eax,%eax
    3344:	79 ea                	jns    3330 <forktest+0x20>
  for(; n > 0; n--){
    3346:	85 db                	test   %ebx,%ebx
    3348:	74 1b                	je     3365 <forktest+0x55>
    334a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3350:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3357:	e8 9e 0c 00 00       	call   3ffa <wait>
    335c:	85 c0                	test   %eax,%eax
    335e:	78 50                	js     33b0 <forktest+0xa0>
  for(; n > 0; n--){
    3360:	83 eb 01             	sub    $0x1,%ebx
    3363:	75 eb                	jne    3350 <forktest+0x40>
  if(wait(0) != -1){
    3365:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    336c:	e8 89 0c 00 00       	call   3ffa <wait>
    3371:	83 f8 ff             	cmp    $0xffffffff,%eax
    3374:	75 5a                	jne    33d0 <forktest+0xc0>
  printf(1, "fork test OK\n");
    3376:	c7 44 24 04 9a 52 00 	movl   $0x529a,0x4(%esp)
    337d:	00 
    337e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3385:	e8 c6 0d 00 00       	call   4150 <printf>
}
    338a:	83 c4 14             	add    $0x14,%esp
    338d:	5b                   	pop    %ebx
    338e:	5d                   	pop    %ebp
    338f:	c3                   	ret    
    printf(1, "fork claimed to work 1000 times!\n");
    3390:	c7 44 24 04 08 5a 00 	movl   $0x5a08,0x4(%esp)
    3397:	00 
    3398:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    339f:	e8 ac 0d 00 00       	call   4150 <printf>
    exit(0);
    33a4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33ab:	e8 42 0c 00 00       	call   3ff2 <exit>
      printf(1, "wait stopped early\n");
    33b0:	c7 44 24 04 73 52 00 	movl   $0x5273,0x4(%esp)
    33b7:	00 
    33b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33bf:	e8 8c 0d 00 00       	call   4150 <printf>
      exit(1);
    33c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33cb:	e8 22 0c 00 00       	call   3ff2 <exit>
    printf(1, "wait got too many\n");
    33d0:	c7 44 24 04 87 52 00 	movl   $0x5287,0x4(%esp)
    33d7:	00 
    33d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33df:	e8 6c 0d 00 00       	call   4150 <printf>
    exit(1);
    33e4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33eb:	e8 02 0c 00 00       	call   3ff2 <exit>

000033f0 <sbrktest>:
{
    33f0:	55                   	push   %ebp
    33f1:	89 e5                	mov    %esp,%ebp
    33f3:	57                   	push   %edi
    33f4:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    33f5:	31 f6                	xor    %esi,%esi
{
    33f7:	53                   	push   %ebx
    33f8:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    33fb:	a1 34 65 00 00       	mov    0x6534,%eax
    3400:	c7 44 24 04 a8 52 00 	movl   $0x52a8,0x4(%esp)
    3407:	00 
    3408:	89 04 24             	mov    %eax,(%esp)
    340b:	e8 40 0d 00 00       	call   4150 <printf>
  oldbrk = sbrk(0);
    3410:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3417:	e8 5e 0c 00 00       	call   407a <sbrk>
  a = sbrk(0);
    341c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3423:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3426:	e8 4f 0c 00 00       	call   407a <sbrk>
    342b:	89 c3                	mov    %eax,%ebx
    342d:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    3430:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3437:	e8 3e 0c 00 00       	call   407a <sbrk>
    if(b != a){
    343c:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    343e:	89 c7                	mov    %eax,%edi
    if(b != a){
    3440:	0f 85 90 02 00 00    	jne    36d6 <sbrktest+0x2e6>
  for(i = 0; i < 5000; i++){
    3446:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    3449:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    344c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    3450:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3456:	75 d8                	jne    3430 <sbrktest+0x40>
  pid = fork();
    3458:	e8 8d 0b 00 00       	call   3fea <fork>
  if(pid < 0){
    345d:	85 c0                	test   %eax,%eax
  pid = fork();
    345f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    3461:	0f 88 9c 03 00 00    	js     3803 <sbrktest+0x413>
  c = sbrk(1);
    3467:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    346e:	e8 07 0c 00 00       	call   407a <sbrk>
  c = sbrk(1);
    3473:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    347a:	e8 fb 0b 00 00       	call   407a <sbrk>
  if(c != a + 1){
    347f:	8d 57 02             	lea    0x2(%edi),%edx
    3482:	39 d0                	cmp    %edx,%eax
    3484:	0f 85 6c 03 00 00    	jne    37f6 <sbrktest+0x406>
  if(pid == 0)
    348a:	85 db                	test   %ebx,%ebx
    exit(0);
    348c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
    3493:	0f 84 a6 02 00 00    	je     373f <sbrktest+0x34f>
  wait(0);
    3499:	e8 5c 0b 00 00       	call   3ffa <wait>
  a = sbrk(0);
    349e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34a5:	e8 d0 0b 00 00       	call   407a <sbrk>
  amt = (BIG) - (uint)a;
    34aa:	ba 00 00 40 06       	mov    $0x6400000,%edx
    34af:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    34b1:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    34b3:	89 14 24             	mov    %edx,(%esp)
    34b6:	e8 bf 0b 00 00       	call   407a <sbrk>
  if (p != a) {
    34bb:	39 d8                	cmp    %ebx,%eax
    34bd:	0f 85 07 03 00 00    	jne    37ca <sbrktest+0x3da>
  *lastaddr = 99;
    34c3:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    34ca:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34d1:	e8 a4 0b 00 00       	call   407a <sbrk>
  c = sbrk(-4096);
    34d6:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    34dd:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    34df:	e8 96 0b 00 00       	call   407a <sbrk>
  if(c == (char*)0xffffffff){
    34e4:	83 f8 ff             	cmp    $0xffffffff,%eax
    34e7:	0f 84 fc 02 00 00    	je     37e9 <sbrktest+0x3f9>
  c = sbrk(0);
    34ed:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34f4:	e8 81 0b 00 00       	call   407a <sbrk>
  if(c != a - 4096){
    34f9:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    34ff:	39 d0                	cmp    %edx,%eax
    3501:	0f 85 d0 02 00 00    	jne    37d7 <sbrktest+0x3e7>
  a = sbrk(0);
    3507:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    350e:	e8 67 0b 00 00       	call   407a <sbrk>
  c = sbrk(4096);
    3513:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    351a:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    351c:	e8 59 0b 00 00       	call   407a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3521:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    3523:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    3525:	0f 85 8d 02 00 00    	jne    37b8 <sbrktest+0x3c8>
    352b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3532:	e8 43 0b 00 00       	call   407a <sbrk>
    3537:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    353d:	39 d0                	cmp    %edx,%eax
    353f:	0f 85 73 02 00 00    	jne    37b8 <sbrktest+0x3c8>
  if(*lastaddr == 99){
    3545:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    354c:	0f 84 59 02 00 00    	je     37ab <sbrktest+0x3bb>
  a = sbrk(0);
    3552:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3559:	e8 1c 0b 00 00       	call   407a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    355e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3565:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3567:	e8 0e 0b 00 00       	call   407a <sbrk>
    356c:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    356f:	29 c1                	sub    %eax,%ecx
    3571:	89 0c 24             	mov    %ecx,(%esp)
    3574:	e8 01 0b 00 00       	call   407a <sbrk>
  if(c != a){
    3579:	39 d8                	cmp    %ebx,%eax
    357b:	0f 85 01 02 00 00    	jne    3782 <sbrktest+0x392>
    3581:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3586:	66 90                	xchg   %ax,%ax
    ppid = getpid();
    3588:	e8 e5 0a 00 00       	call   4072 <getpid>
    358d:	89 c6                	mov    %eax,%esi
    pid = fork();
    358f:	e8 56 0a 00 00       	call   3fea <fork>
    if(pid < 0){
    3594:	85 c0                	test   %eax,%eax
    3596:	0f 88 dc 01 00 00    	js     3778 <sbrktest+0x388>
    359c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    35a0:	0f 84 9e 01 00 00    	je     3744 <sbrktest+0x354>
    wait(0);
    35a6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    35ad:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(0);
    35b3:	e8 42 0a 00 00       	call   3ffa <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    35b8:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    35be:	75 c8                	jne    3588 <sbrktest+0x198>
  if(pipe(fds) != 0){
    35c0:	8d 45 b8             	lea    -0x48(%ebp),%eax
    35c3:	89 04 24             	mov    %eax,(%esp)
    35c6:	e8 37 0a 00 00       	call   4002 <pipe>
    35cb:	85 c0                	test   %eax,%eax
    35cd:	0f 85 51 01 00 00    	jne    3724 <sbrktest+0x334>
    35d3:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    35d6:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    35d9:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    35dc:	e8 09 0a 00 00       	call   3fea <fork>
    35e1:	85 c0                	test   %eax,%eax
    35e3:	89 06                	mov    %eax,(%esi)
    35e5:	0f 84 a6 00 00 00    	je     3691 <sbrktest+0x2a1>
    if(pids[i] != -1)
    35eb:	83 f8 ff             	cmp    $0xffffffff,%eax
    35ee:	74 17                	je     3607 <sbrktest+0x217>
      read(fds[0], &scratch, 1);
    35f0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    35f3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35fa:	00 
    35fb:	89 7c 24 04          	mov    %edi,0x4(%esp)
    35ff:	89 04 24             	mov    %eax,(%esp)
    3602:	e8 03 0a 00 00       	call   400a <read>
    3607:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    360a:	39 de                	cmp    %ebx,%esi
    360c:	75 ce                	jne    35dc <sbrktest+0x1ec>
  c = sbrk(4096);
    360e:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3615:	8d 75 c0             	lea    -0x40(%ebp),%esi
    3618:	e8 5d 0a 00 00       	call   407a <sbrk>
    361d:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    361f:	8b 06                	mov    (%esi),%eax
    3621:	83 f8 ff             	cmp    $0xffffffff,%eax
    3624:	74 14                	je     363a <sbrktest+0x24a>
    kill(pids[i]);
    3626:	89 04 24             	mov    %eax,(%esp)
    3629:	e8 f4 09 00 00       	call   4022 <kill>
    wait(0);
    362e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3635:	e8 c0 09 00 00       	call   3ffa <wait>
    363a:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    363d:	39 f3                	cmp    %esi,%ebx
    363f:	75 de                	jne    361f <sbrktest+0x22f>
  if(c == (char*)0xffffffff){
    3641:	83 ff ff             	cmp    $0xffffffff,%edi
    3644:	0f 84 b9 00 00 00    	je     3703 <sbrktest+0x313>
  if(sbrk(0) > oldbrk)
    364a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3651:	e8 24 0a 00 00       	call   407a <sbrk>
    3656:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3659:	73 19                	jae    3674 <sbrktest+0x284>
    sbrk(-(sbrk(0) - oldbrk));
    365b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3662:	e8 13 0a 00 00       	call   407a <sbrk>
    3667:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    366a:	29 c7                	sub    %eax,%edi
    366c:	89 3c 24             	mov    %edi,(%esp)
    366f:	e8 06 0a 00 00       	call   407a <sbrk>
  printf(stdout, "sbrk test OK\n");
    3674:	a1 34 65 00 00       	mov    0x6534,%eax
    3679:	c7 44 24 04 50 53 00 	movl   $0x5350,0x4(%esp)
    3680:	00 
    3681:	89 04 24             	mov    %eax,(%esp)
    3684:	e8 c7 0a 00 00       	call   4150 <printf>
}
    3689:	83 c4 6c             	add    $0x6c,%esp
    368c:	5b                   	pop    %ebx
    368d:	5e                   	pop    %esi
    368e:	5f                   	pop    %edi
    368f:	5d                   	pop    %ebp
    3690:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3691:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3698:	e8 dd 09 00 00       	call   407a <sbrk>
    369d:	ba 00 00 40 06       	mov    $0x6400000,%edx
    36a2:	29 c2                	sub    %eax,%edx
    36a4:	89 14 24             	mov    %edx,(%esp)
    36a7:	e8 ce 09 00 00       	call   407a <sbrk>
      write(fds[1], "x", 1);
    36ac:	8b 45 bc             	mov    -0x44(%ebp),%eax
    36af:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    36b6:	00 
    36b7:	c7 44 24 04 11 4e 00 	movl   $0x4e11,0x4(%esp)
    36be:	00 
    36bf:	89 04 24             	mov    %eax,(%esp)
    36c2:	e8 4b 09 00 00       	call   4012 <write>
    36c7:	90                   	nop
      for(;;) sleep(1000);
    36c8:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    36cf:	e8 ae 09 00 00       	call   4082 <sleep>
    36d4:	eb f2                	jmp    36c8 <sbrktest+0x2d8>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    36d6:	89 44 24 10          	mov    %eax,0x10(%esp)
    36da:	a1 34 65 00 00       	mov    0x6534,%eax
    36df:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    36e3:	89 74 24 08          	mov    %esi,0x8(%esp)
    36e7:	c7 44 24 04 b3 52 00 	movl   $0x52b3,0x4(%esp)
    36ee:	00 
    36ef:	89 04 24             	mov    %eax,(%esp)
    36f2:	e8 59 0a 00 00       	call   4150 <printf>
      exit(1);
    36f7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    36fe:	e8 ef 08 00 00       	call   3ff2 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    3703:	c7 44 24 04 35 53 00 	movl   $0x5335,0x4(%esp)
    370a:	00 
    printf(stdout, "sbrk test failed post-fork\n");
    370b:	a1 34 65 00 00       	mov    0x6534,%eax
    3710:	89 04 24             	mov    %eax,(%esp)
    3713:	e8 38 0a 00 00       	call   4150 <printf>
    exit(1);
    3718:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    371f:	e8 ce 08 00 00       	call   3ff2 <exit>
    printf(1, "pipe() failed\n");
    3724:	c7 44 24 04 f1 47 00 	movl   $0x47f1,0x4(%esp)
    372b:	00 
    372c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3733:	e8 18 0a 00 00       	call   4150 <printf>
    exit(1);
    3738:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    373f:	e8 ae 08 00 00       	call   3ff2 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3744:	0f be 03             	movsbl (%ebx),%eax
    3747:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    374b:	c7 44 24 04 1c 53 00 	movl   $0x531c,0x4(%esp)
    3752:	00 
    3753:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3757:	a1 34 65 00 00       	mov    0x6534,%eax
    375c:	89 04 24             	mov    %eax,(%esp)
    375f:	e8 ec 09 00 00       	call   4150 <printf>
      kill(ppid);
    3764:	89 34 24             	mov    %esi,(%esp)
    3767:	e8 b6 08 00 00       	call   4022 <kill>
      exit(1);
    376c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3773:	e8 7a 08 00 00       	call   3ff2 <exit>
      printf(stdout, "fork failed\n");
    3778:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    377f:	00 
    3780:	eb 89                	jmp    370b <sbrktest+0x31b>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3782:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3786:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    378a:	c7 44 24 04 fc 5a 00 	movl   $0x5afc,0x4(%esp)
    3791:	00 
    3792:	a1 34 65 00 00       	mov    0x6534,%eax
    3797:	89 04 24             	mov    %eax,(%esp)
    379a:	e8 b1 09 00 00       	call   4150 <printf>
    exit(1);
    379f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    37a6:	e8 47 08 00 00       	call   3ff2 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    37ab:	c7 44 24 04 cc 5a 00 	movl   $0x5acc,0x4(%esp)
    37b2:	00 
    37b3:	e9 53 ff ff ff       	jmp    370b <sbrktest+0x31b>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    37b8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    37bc:	89 74 24 08          	mov    %esi,0x8(%esp)
    37c0:	c7 44 24 04 a4 5a 00 	movl   $0x5aa4,0x4(%esp)
    37c7:	00 
    37c8:	eb c8                	jmp    3792 <sbrktest+0x3a2>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    37ca:	c7 44 24 04 2c 5a 00 	movl   $0x5a2c,0x4(%esp)
    37d1:	00 
    37d2:	e9 34 ff ff ff       	jmp    370b <sbrktest+0x31b>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    37d7:	89 44 24 0c          	mov    %eax,0xc(%esp)
    37db:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    37df:	c7 44 24 04 6c 5a 00 	movl   $0x5a6c,0x4(%esp)
    37e6:	00 
    37e7:	eb a9                	jmp    3792 <sbrktest+0x3a2>
    printf(stdout, "sbrk could not deallocate\n");
    37e9:	c7 44 24 04 01 53 00 	movl   $0x5301,0x4(%esp)
    37f0:	00 
    37f1:	e9 15 ff ff ff       	jmp    370b <sbrktest+0x31b>
    printf(stdout, "sbrk test failed post-fork\n");
    37f6:	c7 44 24 04 e5 52 00 	movl   $0x52e5,0x4(%esp)
    37fd:	00 
    37fe:	e9 08 ff ff ff       	jmp    370b <sbrktest+0x31b>
    printf(stdout, "sbrk test fork failed\n");
    3803:	c7 44 24 04 ce 52 00 	movl   $0x52ce,0x4(%esp)
    380a:	00 
    380b:	e9 fb fe ff ff       	jmp    370b <sbrktest+0x31b>

00003810 <validateint>:
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
}
    3813:	5d                   	pop    %ebp
    3814:	c3                   	ret    
    3815:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3819:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003820 <validatetest>:
{
    3820:	55                   	push   %ebp
    3821:	89 e5                	mov    %esp,%ebp
    3823:	56                   	push   %esi
    3824:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3825:	31 db                	xor    %ebx,%ebx
{
    3827:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    382a:	a1 34 65 00 00       	mov    0x6534,%eax
    382f:	c7 44 24 04 5e 53 00 	movl   $0x535e,0x4(%esp)
    3836:	00 
    3837:	89 04 24             	mov    %eax,(%esp)
    383a:	e8 11 09 00 00       	call   4150 <printf>
    383f:	90                   	nop
    if((pid = fork()) == 0){
    3840:	e8 a5 07 00 00       	call   3fea <fork>
      exit(0);
    3845:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if((pid = fork()) == 0){
    384c:	85 c0                	test   %eax,%eax
    384e:	89 c6                	mov    %eax,%esi
    3850:	0f 84 80 00 00 00    	je     38d6 <validatetest+0xb6>
    sleep(0);
    3856:	e8 27 08 00 00       	call   4082 <sleep>
    sleep(0);
    385b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3862:	e8 1b 08 00 00       	call   4082 <sleep>
    kill(pid);
    3867:	89 34 24             	mov    %esi,(%esp)
    386a:	e8 b3 07 00 00       	call   4022 <kill>
    wait(0);
    386f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3876:	e8 7f 07 00 00       	call   3ffa <wait>
    if(link("nosuchfile", (char*)p) != -1){
    387b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    387f:	c7 04 24 6d 53 00 00 	movl   $0x536d,(%esp)
    3886:	e8 c7 07 00 00       	call   4052 <link>
    388b:	83 f8 ff             	cmp    $0xffffffff,%eax
    388e:	75 2a                	jne    38ba <validatetest+0x9a>
  for(p = 0; p <= (uint)hi; p += 4096){
    3890:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3896:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    389c:	75 a2                	jne    3840 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    389e:	a1 34 65 00 00       	mov    0x6534,%eax
    38a3:	c7 44 24 04 91 53 00 	movl   $0x5391,0x4(%esp)
    38aa:	00 
    38ab:	89 04 24             	mov    %eax,(%esp)
    38ae:	e8 9d 08 00 00       	call   4150 <printf>
}
    38b3:	83 c4 10             	add    $0x10,%esp
    38b6:	5b                   	pop    %ebx
    38b7:	5e                   	pop    %esi
    38b8:	5d                   	pop    %ebp
    38b9:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    38ba:	a1 34 65 00 00       	mov    0x6534,%eax
    38bf:	c7 44 24 04 78 53 00 	movl   $0x5378,0x4(%esp)
    38c6:	00 
    38c7:	89 04 24             	mov    %eax,(%esp)
    38ca:	e8 81 08 00 00       	call   4150 <printf>
      exit(1);
    38cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    38d6:	e8 17 07 00 00       	call   3ff2 <exit>
    38db:	90                   	nop
    38dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038e0 <bsstest>:
{
    38e0:	55                   	push   %ebp
    38e1:	89 e5                	mov    %esp,%ebp
    38e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    38e6:	a1 34 65 00 00       	mov    0x6534,%eax
    38eb:	c7 44 24 04 9e 53 00 	movl   $0x539e,0x4(%esp)
    38f2:	00 
    38f3:	89 04 24             	mov    %eax,(%esp)
    38f6:	e8 55 08 00 00       	call   4150 <printf>
    if(uninit[i] != '\0'){
    38fb:	80 3d 00 66 00 00 00 	cmpb   $0x0,0x6600
    3902:	75 36                	jne    393a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3904:	b8 01 00 00 00       	mov    $0x1,%eax
    3909:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3910:	80 b8 00 66 00 00 00 	cmpb   $0x0,0x6600(%eax)
    3917:	75 21                	jne    393a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3919:	83 c0 01             	add    $0x1,%eax
    391c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3921:	75 ed                	jne    3910 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3923:	a1 34 65 00 00       	mov    0x6534,%eax
    3928:	c7 44 24 04 b9 53 00 	movl   $0x53b9,0x4(%esp)
    392f:	00 
    3930:	89 04 24             	mov    %eax,(%esp)
    3933:	e8 18 08 00 00       	call   4150 <printf>
}
    3938:	c9                   	leave  
    3939:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    393a:	a1 34 65 00 00       	mov    0x6534,%eax
    393f:	c7 44 24 04 a8 53 00 	movl   $0x53a8,0x4(%esp)
    3946:	00 
    3947:	89 04 24             	mov    %eax,(%esp)
    394a:	e8 01 08 00 00       	call   4150 <printf>
      exit(1);
    394f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3956:	e8 97 06 00 00       	call   3ff2 <exit>
    395b:	90                   	nop
    395c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003960 <bigargtest>:
{
    3960:	55                   	push   %ebp
    3961:	89 e5                	mov    %esp,%ebp
    3963:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    3966:	c7 04 24 c6 53 00 00 	movl   $0x53c6,(%esp)
    396d:	e8 d0 06 00 00       	call   4042 <unlink>
  pid = fork();
    3972:	e8 73 06 00 00       	call   3fea <fork>
  if(pid == 0){
    3977:	85 c0                	test   %eax,%eax
    3979:	74 4d                	je     39c8 <bigargtest+0x68>
    397b:	90                   	nop
    397c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    3980:	0f 88 e6 00 00 00    	js     3a6c <bigargtest+0x10c>
  wait(0);
    3986:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    398d:	e8 68 06 00 00       	call   3ffa <wait>
  fd = open("bigarg-ok", 0);
    3992:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3999:	00 
    399a:	c7 04 24 c6 53 00 00 	movl   $0x53c6,(%esp)
    39a1:	e8 8c 06 00 00       	call   4032 <open>
  if(fd < 0){
    39a6:	85 c0                	test   %eax,%eax
    39a8:	0f 88 9d 00 00 00    	js     3a4b <bigargtest+0xeb>
  close(fd);
    39ae:	89 04 24             	mov    %eax,(%esp)
    39b1:	e8 64 06 00 00       	call   401a <close>
  unlink("bigarg-ok");
    39b6:	c7 04 24 c6 53 00 00 	movl   $0x53c6,(%esp)
    39bd:	e8 80 06 00 00       	call   4042 <unlink>
}
    39c2:	c9                   	leave  
    39c3:	c3                   	ret    
    39c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    39c8:	c7 04 85 60 65 00 00 	movl   $0x5b20,0x6560(,%eax,4)
    39cf:	20 5b 00 00 
    for(i = 0; i < MAXARG-1; i++)
    39d3:	83 c0 01             	add    $0x1,%eax
    39d6:	83 f8 1f             	cmp    $0x1f,%eax
    39d9:	75 ed                	jne    39c8 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    39db:	a1 34 65 00 00       	mov    0x6534,%eax
    39e0:	c7 44 24 04 d0 53 00 	movl   $0x53d0,0x4(%esp)
    39e7:	00 
    args[MAXARG-1] = 0;
    39e8:	c7 05 dc 65 00 00 00 	movl   $0x0,0x65dc
    39ef:	00 00 00 
    printf(stdout, "bigarg test\n");
    39f2:	89 04 24             	mov    %eax,(%esp)
    39f5:	e8 56 07 00 00       	call   4150 <printf>
    exec("echo", args);
    39fa:	c7 44 24 04 60 65 00 	movl   $0x6560,0x4(%esp)
    3a01:	00 
    3a02:	c7 04 24 9d 45 00 00 	movl   $0x459d,(%esp)
    3a09:	e8 1c 06 00 00       	call   402a <exec>
    printf(stdout, "bigarg test ok\n");
    3a0e:	a1 34 65 00 00       	mov    0x6534,%eax
    3a13:	c7 44 24 04 dd 53 00 	movl   $0x53dd,0x4(%esp)
    3a1a:	00 
    3a1b:	89 04 24             	mov    %eax,(%esp)
    3a1e:	e8 2d 07 00 00       	call   4150 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3a23:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3a2a:	00 
    3a2b:	c7 04 24 c6 53 00 00 	movl   $0x53c6,(%esp)
    3a32:	e8 fb 05 00 00       	call   4032 <open>
    close(fd);
    3a37:	89 04 24             	mov    %eax,(%esp)
    3a3a:	e8 db 05 00 00       	call   401a <close>
    exit(1);
    3a3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a46:	e8 a7 05 00 00       	call   3ff2 <exit>
    printf(stdout, "bigarg test failed!\n");
    3a4b:	c7 44 24 04 06 54 00 	movl   $0x5406,0x4(%esp)
    3a52:	00 
    3a53:	a1 34 65 00 00       	mov    0x6534,%eax
    3a58:	89 04 24             	mov    %eax,(%esp)
    3a5b:	e8 f0 06 00 00       	call   4150 <printf>
    exit(1);
    3a60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a67:	e8 86 05 00 00       	call   3ff2 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3a6c:	c7 44 24 04 ed 53 00 	movl   $0x53ed,0x4(%esp)
    3a73:	00 
    3a74:	eb dd                	jmp    3a53 <bigargtest+0xf3>
    3a76:	8d 76 00             	lea    0x0(%esi),%esi
    3a79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003a80 <fsfull>:
{
    3a80:	55                   	push   %ebp
    3a81:	89 e5                	mov    %esp,%ebp
    3a83:	57                   	push   %edi
    3a84:	56                   	push   %esi
    3a85:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3a86:	31 db                	xor    %ebx,%ebx
{
    3a88:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    3a8b:	c7 44 24 04 1b 54 00 	movl   $0x541b,0x4(%esp)
    3a92:	00 
    3a93:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a9a:	e8 b1 06 00 00       	call   4150 <printf>
    3a9f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    3aa0:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3aa5:	89 d9                	mov    %ebx,%ecx
    3aa7:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3aa9:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3aab:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3aae:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    3ab0:	c7 44 24 04 28 54 00 	movl   $0x5428,0x4(%esp)
    3ab7:	00 
    3ab8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    3abf:	c1 fa 06             	sar    $0x6,%edx
    3ac2:	29 ca                	sub    %ecx,%edx
    3ac4:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ac7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3acd:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3ad0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3ad5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3ad9:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3add:	29 d6                	sub    %edx,%esi
    3adf:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3ae1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ae6:	c1 fe 1f             	sar    $0x1f,%esi
    3ae9:	c1 fa 05             	sar    $0x5,%edx
    3aec:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3aee:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3af3:	83 c2 30             	add    $0x30,%edx
    3af6:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3af9:	f7 eb                	imul   %ebx
    3afb:	c1 fa 05             	sar    $0x5,%edx
    3afe:	29 ca                	sub    %ecx,%edx
    3b00:	6b d2 64             	imul   $0x64,%edx,%edx
    3b03:	29 d7                	sub    %edx,%edi
    3b05:	89 f8                	mov    %edi,%eax
    3b07:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3b09:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3b0b:	c1 ff 1f             	sar    $0x1f,%edi
    3b0e:	c1 fa 02             	sar    $0x2,%edx
    3b11:	29 fa                	sub    %edi,%edx
    3b13:	83 c2 30             	add    $0x30,%edx
    3b16:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3b19:	f7 ee                	imul   %esi
    3b1b:	c1 fa 02             	sar    $0x2,%edx
    3b1e:	29 ca                	sub    %ecx,%edx
    3b20:	89 d9                	mov    %ebx,%ecx
    3b22:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3b25:	01 c0                	add    %eax,%eax
    3b27:	29 c1                	sub    %eax,%ecx
    3b29:	89 c8                	mov    %ecx,%eax
    3b2b:	83 c0 30             	add    $0x30,%eax
    3b2e:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3b31:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b34:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b38:	e8 13 06 00 00       	call   4150 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3b3d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b40:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3b47:	00 
    3b48:	89 04 24             	mov    %eax,(%esp)
    3b4b:	e8 e2 04 00 00       	call   4032 <open>
    if(fd < 0){
    3b50:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3b52:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3b54:	78 57                	js     3bad <fsfull+0x12d>
    3b56:	31 f6                	xor    %esi,%esi
    3b58:	eb 08                	jmp    3b62 <fsfull+0xe2>
    3b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    3b60:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3b62:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3b69:	00 
    3b6a:	c7 44 24 04 20 8d 00 	movl   $0x8d20,0x4(%esp)
    3b71:	00 
    3b72:	89 3c 24             	mov    %edi,(%esp)
    3b75:	e8 98 04 00 00       	call   4012 <write>
      if(cc < 512)
    3b7a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3b7f:	7f df                	jg     3b60 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3b81:	89 74 24 08          	mov    %esi,0x8(%esp)
    3b85:	c7 44 24 04 44 54 00 	movl   $0x5444,0x4(%esp)
    3b8c:	00 
    3b8d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b94:	e8 b7 05 00 00       	call   4150 <printf>
    close(fd);
    3b99:	89 3c 24             	mov    %edi,(%esp)
    3b9c:	e8 79 04 00 00       	call   401a <close>
    if(total == 0)
    3ba1:	85 f6                	test   %esi,%esi
    3ba3:	74 23                	je     3bc8 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3ba5:	83 c3 01             	add    $0x1,%ebx
  }
    3ba8:	e9 f3 fe ff ff       	jmp    3aa0 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3bad:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3bb0:	89 44 24 08          	mov    %eax,0x8(%esp)
    3bb4:	c7 44 24 04 34 54 00 	movl   $0x5434,0x4(%esp)
    3bbb:	00 
    3bbc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3bc3:	e8 88 05 00 00       	call   4150 <printf>
    name[1] = '0' + nfiles / 1000;
    3bc8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3bcd:	89 d9                	mov    %ebx,%ecx
    3bcf:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3bd1:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3bd3:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3bd6:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3bd8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3bdc:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3be0:	c1 fa 06             	sar    $0x6,%edx
    3be3:	29 ca                	sub    %ecx,%edx
    3be5:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3be8:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3bee:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3bf1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3bf6:	29 d6                	sub    %edx,%esi
    3bf8:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3bfa:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bff:	c1 fe 1f             	sar    $0x1f,%esi
    3c02:	c1 fa 05             	sar    $0x5,%edx
    3c05:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3c07:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3c0c:	83 c2 30             	add    $0x30,%edx
    3c0f:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3c12:	f7 eb                	imul   %ebx
    3c14:	c1 fa 05             	sar    $0x5,%edx
    3c17:	29 ca                	sub    %ecx,%edx
    3c19:	6b d2 64             	imul   $0x64,%edx,%edx
    3c1c:	29 d7                	sub    %edx,%edi
    3c1e:	89 f8                	mov    %edi,%eax
    3c20:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3c22:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3c24:	c1 ff 1f             	sar    $0x1f,%edi
    3c27:	c1 fa 02             	sar    $0x2,%edx
    3c2a:	29 fa                	sub    %edi,%edx
    3c2c:	83 c2 30             	add    $0x30,%edx
    3c2f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3c32:	f7 ee                	imul   %esi
    3c34:	c1 fa 02             	sar    $0x2,%edx
    3c37:	29 ca                	sub    %ecx,%edx
    3c39:	89 d9                	mov    %ebx,%ecx
    3c3b:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    3c3e:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3c41:	01 c0                	add    %eax,%eax
    3c43:	29 c1                	sub    %eax,%ecx
    3c45:	89 c8                	mov    %ecx,%eax
    3c47:	83 c0 30             	add    $0x30,%eax
    3c4a:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3c4d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3c50:	89 04 24             	mov    %eax,(%esp)
    3c53:	e8 ea 03 00 00       	call   4042 <unlink>
  while(nfiles >= 0){
    3c58:	83 fb ff             	cmp    $0xffffffff,%ebx
    3c5b:	0f 85 67 ff ff ff    	jne    3bc8 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    3c61:	c7 44 24 04 54 54 00 	movl   $0x5454,0x4(%esp)
    3c68:	00 
    3c69:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c70:	e8 db 04 00 00       	call   4150 <printf>
}
    3c75:	83 c4 5c             	add    $0x5c,%esp
    3c78:	5b                   	pop    %ebx
    3c79:	5e                   	pop    %esi
    3c7a:	5f                   	pop    %edi
    3c7b:	5d                   	pop    %ebp
    3c7c:	c3                   	ret    
    3c7d:	8d 76 00             	lea    0x0(%esi),%esi

00003c80 <uio>:
{
    3c80:	55                   	push   %ebp
    3c81:	89 e5                	mov    %esp,%ebp
    3c83:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3c86:	c7 44 24 04 6a 54 00 	movl   $0x546a,0x4(%esp)
    3c8d:	00 
    3c8e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c95:	e8 b6 04 00 00       	call   4150 <printf>
  pid = fork();
    3c9a:	e8 4b 03 00 00       	call   3fea <fork>
  if(pid == 0){
    3c9f:	85 c0                	test   %eax,%eax
    3ca1:	74 24                	je     3cc7 <uio+0x47>
  } else if(pid < 0){
    3ca3:	78 50                	js     3cf5 <uio+0x75>
  wait(0);
    3ca5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3cac:	e8 49 03 00 00       	call   3ffa <wait>
  printf(1, "uio test done\n");
    3cb1:	c7 44 24 04 74 54 00 	movl   $0x5474,0x4(%esp)
    3cb8:	00 
    3cb9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cc0:	e8 8b 04 00 00       	call   4150 <printf>
}
    3cc5:	c9                   	leave  
    3cc6:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3cc7:	ba 70 00 00 00       	mov    $0x70,%edx
    3ccc:	b8 09 00 00 00       	mov    $0x9,%eax
    3cd1:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3cd2:	b2 71                	mov    $0x71,%dl
    3cd4:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3cd5:	c7 44 24 04 00 5c 00 	movl   $0x5c00,0x4(%esp)
    3cdc:	00 
    3cdd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3ce4:	e8 67 04 00 00       	call   4150 <printf>
    exit(1);
    3ce9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cf0:	e8 fd 02 00 00       	call   3ff2 <exit>
    printf (1, "fork failed\n");
    3cf5:	c7 44 24 04 f9 53 00 	movl   $0x53f9,0x4(%esp)
    3cfc:	00 
    3cfd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d04:	e8 47 04 00 00       	call   4150 <printf>
    exit(1);
    3d09:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d10:	e8 dd 02 00 00       	call   3ff2 <exit>
    3d15:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d20 <argptest>:
{
    3d20:	55                   	push   %ebp
    3d21:	89 e5                	mov    %esp,%ebp
    3d23:	53                   	push   %ebx
    3d24:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3d27:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3d2e:	00 
    3d2f:	c7 04 24 83 54 00 00 	movl   $0x5483,(%esp)
    3d36:	e8 f7 02 00 00       	call   4032 <open>
  if (fd < 0) {
    3d3b:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3d3d:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3d3f:	78 45                	js     3d86 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3d41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d48:	e8 2d 03 00 00       	call   407a <sbrk>
    3d4d:	89 1c 24             	mov    %ebx,(%esp)
    3d50:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3d57:	ff 
    3d58:	83 e8 01             	sub    $0x1,%eax
    3d5b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3d5f:	e8 a6 02 00 00       	call   400a <read>
  close(fd);
    3d64:	89 1c 24             	mov    %ebx,(%esp)
    3d67:	e8 ae 02 00 00       	call   401a <close>
  printf(1, "arg test passed\n");
    3d6c:	c7 44 24 04 95 54 00 	movl   $0x5495,0x4(%esp)
    3d73:	00 
    3d74:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d7b:	e8 d0 03 00 00       	call   4150 <printf>
}
    3d80:	83 c4 14             	add    $0x14,%esp
    3d83:	5b                   	pop    %ebx
    3d84:	5d                   	pop    %ebp
    3d85:	c3                   	ret    
    printf(2, "open failed\n");
    3d86:	c7 44 24 04 88 54 00 	movl   $0x5488,0x4(%esp)
    3d8d:	00 
    3d8e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3d95:	e8 b6 03 00 00       	call   4150 <printf>
    exit(1);
    3d9a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3da1:	e8 4c 02 00 00       	call   3ff2 <exit>
    3da6:	8d 76 00             	lea    0x0(%esi),%esi
    3da9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003db0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3db0:	69 05 30 65 00 00 0d 	imul   $0x19660d,0x6530,%eax
    3db7:	66 19 00 
{
    3dba:	55                   	push   %ebp
    3dbb:	89 e5                	mov    %esp,%ebp
}
    3dbd:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3dbe:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3dc3:	a3 30 65 00 00       	mov    %eax,0x6530
}
    3dc8:	c3                   	ret    
    3dc9:	66 90                	xchg   %ax,%ax
    3dcb:	66 90                	xchg   %ax,%ax
    3dcd:	66 90                	xchg   %ax,%ax
    3dcf:	90                   	nop

00003dd0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3dd0:	55                   	push   %ebp
    3dd1:	89 e5                	mov    %esp,%ebp
    3dd3:	8b 45 08             	mov    0x8(%ebp),%eax
    3dd6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3dd9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3dda:	89 c2                	mov    %eax,%edx
    3ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3de0:	83 c1 01             	add    $0x1,%ecx
    3de3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3de7:	83 c2 01             	add    $0x1,%edx
    3dea:	84 db                	test   %bl,%bl
    3dec:	88 5a ff             	mov    %bl,-0x1(%edx)
    3def:	75 ef                	jne    3de0 <strcpy+0x10>
    ;
  return os;
}
    3df1:	5b                   	pop    %ebx
    3df2:	5d                   	pop    %ebp
    3df3:	c3                   	ret    
    3df4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3dfa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003e00 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3e00:	55                   	push   %ebp
    3e01:	89 e5                	mov    %esp,%ebp
    3e03:	8b 55 08             	mov    0x8(%ebp),%edx
    3e06:	53                   	push   %ebx
    3e07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3e0a:	0f b6 02             	movzbl (%edx),%eax
    3e0d:	84 c0                	test   %al,%al
    3e0f:	74 2d                	je     3e3e <strcmp+0x3e>
    3e11:	0f b6 19             	movzbl (%ecx),%ebx
    3e14:	38 d8                	cmp    %bl,%al
    3e16:	74 0e                	je     3e26 <strcmp+0x26>
    3e18:	eb 2b                	jmp    3e45 <strcmp+0x45>
    3e1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3e20:	38 c8                	cmp    %cl,%al
    3e22:	75 15                	jne    3e39 <strcmp+0x39>
    p++, q++;
    3e24:	89 d9                	mov    %ebx,%ecx
    3e26:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3e29:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3e2c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3e2f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3e33:	84 c0                	test   %al,%al
    3e35:	75 e9                	jne    3e20 <strcmp+0x20>
    3e37:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3e39:	29 c8                	sub    %ecx,%eax
}
    3e3b:	5b                   	pop    %ebx
    3e3c:	5d                   	pop    %ebp
    3e3d:	c3                   	ret    
    3e3e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3e41:	31 c0                	xor    %eax,%eax
    3e43:	eb f4                	jmp    3e39 <strcmp+0x39>
    3e45:	0f b6 cb             	movzbl %bl,%ecx
    3e48:	eb ef                	jmp    3e39 <strcmp+0x39>
    3e4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003e50 <strlen>:

uint
strlen(const char *s)
{
    3e50:	55                   	push   %ebp
    3e51:	89 e5                	mov    %esp,%ebp
    3e53:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3e56:	80 39 00             	cmpb   $0x0,(%ecx)
    3e59:	74 12                	je     3e6d <strlen+0x1d>
    3e5b:	31 d2                	xor    %edx,%edx
    3e5d:	8d 76 00             	lea    0x0(%esi),%esi
    3e60:	83 c2 01             	add    $0x1,%edx
    3e63:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3e67:	89 d0                	mov    %edx,%eax
    3e69:	75 f5                	jne    3e60 <strlen+0x10>
    ;
  return n;
}
    3e6b:	5d                   	pop    %ebp
    3e6c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3e6d:	31 c0                	xor    %eax,%eax
}
    3e6f:	5d                   	pop    %ebp
    3e70:	c3                   	ret    
    3e71:	eb 0d                	jmp    3e80 <memset>
    3e73:	90                   	nop
    3e74:	90                   	nop
    3e75:	90                   	nop
    3e76:	90                   	nop
    3e77:	90                   	nop
    3e78:	90                   	nop
    3e79:	90                   	nop
    3e7a:	90                   	nop
    3e7b:	90                   	nop
    3e7c:	90                   	nop
    3e7d:	90                   	nop
    3e7e:	90                   	nop
    3e7f:	90                   	nop

00003e80 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3e80:	55                   	push   %ebp
    3e81:	89 e5                	mov    %esp,%ebp
    3e83:	8b 55 08             	mov    0x8(%ebp),%edx
    3e86:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3e87:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3e8a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e8d:	89 d7                	mov    %edx,%edi
    3e8f:	fc                   	cld    
    3e90:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3e92:	89 d0                	mov    %edx,%eax
    3e94:	5f                   	pop    %edi
    3e95:	5d                   	pop    %ebp
    3e96:	c3                   	ret    
    3e97:	89 f6                	mov    %esi,%esi
    3e99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ea0 <strchr>:

char*
strchr(const char *s, char c)
{
    3ea0:	55                   	push   %ebp
    3ea1:	89 e5                	mov    %esp,%ebp
    3ea3:	8b 45 08             	mov    0x8(%ebp),%eax
    3ea6:	53                   	push   %ebx
    3ea7:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3eaa:	0f b6 18             	movzbl (%eax),%ebx
    3ead:	84 db                	test   %bl,%bl
    3eaf:	74 1d                	je     3ece <strchr+0x2e>
    if(*s == c)
    3eb1:	38 d3                	cmp    %dl,%bl
    3eb3:	89 d1                	mov    %edx,%ecx
    3eb5:	75 0d                	jne    3ec4 <strchr+0x24>
    3eb7:	eb 17                	jmp    3ed0 <strchr+0x30>
    3eb9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3ec0:	38 ca                	cmp    %cl,%dl
    3ec2:	74 0c                	je     3ed0 <strchr+0x30>
  for(; *s; s++)
    3ec4:	83 c0 01             	add    $0x1,%eax
    3ec7:	0f b6 10             	movzbl (%eax),%edx
    3eca:	84 d2                	test   %dl,%dl
    3ecc:	75 f2                	jne    3ec0 <strchr+0x20>
      return (char*)s;
  return 0;
    3ece:	31 c0                	xor    %eax,%eax
}
    3ed0:	5b                   	pop    %ebx
    3ed1:	5d                   	pop    %ebp
    3ed2:	c3                   	ret    
    3ed3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3ed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ee0 <gets>:

char*
gets(char *buf, int max)
{
    3ee0:	55                   	push   %ebp
    3ee1:	89 e5                	mov    %esp,%ebp
    3ee3:	57                   	push   %edi
    3ee4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3ee5:	31 f6                	xor    %esi,%esi
{
    3ee7:	53                   	push   %ebx
    3ee8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3eeb:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3eee:	eb 31                	jmp    3f21 <gets+0x41>
    cc = read(0, &c, 1);
    3ef0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ef7:	00 
    3ef8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3efc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3f03:	e8 02 01 00 00       	call   400a <read>
    if(cc < 1)
    3f08:	85 c0                	test   %eax,%eax
    3f0a:	7e 1d                	jle    3f29 <gets+0x49>
      break;
    buf[i++] = c;
    3f0c:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3f10:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3f12:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3f15:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3f17:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3f1b:	74 0c                	je     3f29 <gets+0x49>
    3f1d:	3c 0a                	cmp    $0xa,%al
    3f1f:	74 08                	je     3f29 <gets+0x49>
  for(i=0; i+1 < max; ){
    3f21:	8d 5e 01             	lea    0x1(%esi),%ebx
    3f24:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3f27:	7c c7                	jl     3ef0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3f29:	8b 45 08             	mov    0x8(%ebp),%eax
    3f2c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3f30:	83 c4 2c             	add    $0x2c,%esp
    3f33:	5b                   	pop    %ebx
    3f34:	5e                   	pop    %esi
    3f35:	5f                   	pop    %edi
    3f36:	5d                   	pop    %ebp
    3f37:	c3                   	ret    
    3f38:	90                   	nop
    3f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003f40 <stat>:

int
stat(const char *n, struct stat *st)
{
    3f40:	55                   	push   %ebp
    3f41:	89 e5                	mov    %esp,%ebp
    3f43:	56                   	push   %esi
    3f44:	53                   	push   %ebx
    3f45:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3f48:	8b 45 08             	mov    0x8(%ebp),%eax
    3f4b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3f52:	00 
    3f53:	89 04 24             	mov    %eax,(%esp)
    3f56:	e8 d7 00 00 00       	call   4032 <open>
  if(fd < 0)
    3f5b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3f5d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3f5f:	78 27                	js     3f88 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3f61:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f64:	89 1c 24             	mov    %ebx,(%esp)
    3f67:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f6b:	e8 da 00 00 00       	call   404a <fstat>
  close(fd);
    3f70:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3f73:	89 c6                	mov    %eax,%esi
  close(fd);
    3f75:	e8 a0 00 00 00       	call   401a <close>
  return r;
    3f7a:	89 f0                	mov    %esi,%eax
}
    3f7c:	83 c4 10             	add    $0x10,%esp
    3f7f:	5b                   	pop    %ebx
    3f80:	5e                   	pop    %esi
    3f81:	5d                   	pop    %ebp
    3f82:	c3                   	ret    
    3f83:	90                   	nop
    3f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3f88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f8d:	eb ed                	jmp    3f7c <stat+0x3c>
    3f8f:	90                   	nop

00003f90 <atoi>:

int
atoi(const char *s)
{
    3f90:	55                   	push   %ebp
    3f91:	89 e5                	mov    %esp,%ebp
    3f93:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3f96:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f97:	0f be 11             	movsbl (%ecx),%edx
    3f9a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3f9d:	3c 09                	cmp    $0x9,%al
  n = 0;
    3f9f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3fa4:	77 17                	ja     3fbd <atoi+0x2d>
    3fa6:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3fa8:	83 c1 01             	add    $0x1,%ecx
    3fab:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3fae:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3fb2:	0f be 11             	movsbl (%ecx),%edx
    3fb5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3fb8:	80 fb 09             	cmp    $0x9,%bl
    3fbb:	76 eb                	jbe    3fa8 <atoi+0x18>
  return n;
}
    3fbd:	5b                   	pop    %ebx
    3fbe:	5d                   	pop    %ebp
    3fbf:	c3                   	ret    

00003fc0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3fc0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3fc1:	31 d2                	xor    %edx,%edx
{
    3fc3:	89 e5                	mov    %esp,%ebp
    3fc5:	56                   	push   %esi
    3fc6:	8b 45 08             	mov    0x8(%ebp),%eax
    3fc9:	53                   	push   %ebx
    3fca:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3fcd:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3fd0:	85 db                	test   %ebx,%ebx
    3fd2:	7e 12                	jle    3fe6 <memmove+0x26>
    3fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3fd8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3fdc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3fdf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3fe2:	39 da                	cmp    %ebx,%edx
    3fe4:	75 f2                	jne    3fd8 <memmove+0x18>
  return vdst;
}
    3fe6:	5b                   	pop    %ebx
    3fe7:	5e                   	pop    %esi
    3fe8:	5d                   	pop    %ebp
    3fe9:	c3                   	ret    

00003fea <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3fea:	b8 01 00 00 00       	mov    $0x1,%eax
    3fef:	cd 40                	int    $0x40
    3ff1:	c3                   	ret    

00003ff2 <exit>:
SYSCALL(exit)
    3ff2:	b8 02 00 00 00       	mov    $0x2,%eax
    3ff7:	cd 40                	int    $0x40
    3ff9:	c3                   	ret    

00003ffa <wait>:
SYSCALL(wait)
    3ffa:	b8 03 00 00 00       	mov    $0x3,%eax
    3fff:	cd 40                	int    $0x40
    4001:	c3                   	ret    

00004002 <pipe>:
SYSCALL(pipe)
    4002:	b8 04 00 00 00       	mov    $0x4,%eax
    4007:	cd 40                	int    $0x40
    4009:	c3                   	ret    

0000400a <read>:
SYSCALL(read)
    400a:	b8 05 00 00 00       	mov    $0x5,%eax
    400f:	cd 40                	int    $0x40
    4011:	c3                   	ret    

00004012 <write>:
SYSCALL(write)
    4012:	b8 10 00 00 00       	mov    $0x10,%eax
    4017:	cd 40                	int    $0x40
    4019:	c3                   	ret    

0000401a <close>:
SYSCALL(close)
    401a:	b8 15 00 00 00       	mov    $0x15,%eax
    401f:	cd 40                	int    $0x40
    4021:	c3                   	ret    

00004022 <kill>:
SYSCALL(kill)
    4022:	b8 06 00 00 00       	mov    $0x6,%eax
    4027:	cd 40                	int    $0x40
    4029:	c3                   	ret    

0000402a <exec>:
SYSCALL(exec)
    402a:	b8 07 00 00 00       	mov    $0x7,%eax
    402f:	cd 40                	int    $0x40
    4031:	c3                   	ret    

00004032 <open>:
SYSCALL(open)
    4032:	b8 0f 00 00 00       	mov    $0xf,%eax
    4037:	cd 40                	int    $0x40
    4039:	c3                   	ret    

0000403a <mknod>:
SYSCALL(mknod)
    403a:	b8 11 00 00 00       	mov    $0x11,%eax
    403f:	cd 40                	int    $0x40
    4041:	c3                   	ret    

00004042 <unlink>:
SYSCALL(unlink)
    4042:	b8 12 00 00 00       	mov    $0x12,%eax
    4047:	cd 40                	int    $0x40
    4049:	c3                   	ret    

0000404a <fstat>:
SYSCALL(fstat)
    404a:	b8 08 00 00 00       	mov    $0x8,%eax
    404f:	cd 40                	int    $0x40
    4051:	c3                   	ret    

00004052 <link>:
SYSCALL(link)
    4052:	b8 13 00 00 00       	mov    $0x13,%eax
    4057:	cd 40                	int    $0x40
    4059:	c3                   	ret    

0000405a <mkdir>:
SYSCALL(mkdir)
    405a:	b8 14 00 00 00       	mov    $0x14,%eax
    405f:	cd 40                	int    $0x40
    4061:	c3                   	ret    

00004062 <chdir>:
SYSCALL(chdir)
    4062:	b8 09 00 00 00       	mov    $0x9,%eax
    4067:	cd 40                	int    $0x40
    4069:	c3                   	ret    

0000406a <dup>:
SYSCALL(dup)
    406a:	b8 0a 00 00 00       	mov    $0xa,%eax
    406f:	cd 40                	int    $0x40
    4071:	c3                   	ret    

00004072 <getpid>:
SYSCALL(getpid)
    4072:	b8 0b 00 00 00       	mov    $0xb,%eax
    4077:	cd 40                	int    $0x40
    4079:	c3                   	ret    

0000407a <sbrk>:
SYSCALL(sbrk)
    407a:	b8 0c 00 00 00       	mov    $0xc,%eax
    407f:	cd 40                	int    $0x40
    4081:	c3                   	ret    

00004082 <sleep>:
SYSCALL(sleep)
    4082:	b8 0d 00 00 00       	mov    $0xd,%eax
    4087:	cd 40                	int    $0x40
    4089:	c3                   	ret    

0000408a <uptime>:
SYSCALL(uptime)
    408a:	b8 0e 00 00 00       	mov    $0xe,%eax
    408f:	cd 40                	int    $0x40
    4091:	c3                   	ret    

00004092 <waitpid>:
SYSCALL(waitpid)
    4092:	b8 16 00 00 00       	mov    $0x16,%eax
    4097:	cd 40                	int    $0x40
    4099:	c3                   	ret    

0000409a <setPriority>:
SYSCALL(setPriority)
    409a:	b8 17 00 00 00       	mov    $0x17,%eax
    409f:	cd 40                	int    $0x40
    40a1:	c3                   	ret    
    40a2:	66 90                	xchg   %ax,%ax
    40a4:	66 90                	xchg   %ax,%ax
    40a6:	66 90                	xchg   %ax,%ax
    40a8:	66 90                	xchg   %ax,%ax
    40aa:	66 90                	xchg   %ax,%ax
    40ac:	66 90                	xchg   %ax,%ax
    40ae:	66 90                	xchg   %ax,%ax

000040b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    40b0:	55                   	push   %ebp
    40b1:	89 e5                	mov    %esp,%ebp
    40b3:	57                   	push   %edi
    40b4:	56                   	push   %esi
    40b5:	89 c6                	mov    %eax,%esi
    40b7:	53                   	push   %ebx
    40b8:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    40bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
    40be:	85 db                	test   %ebx,%ebx
    40c0:	74 09                	je     40cb <printint+0x1b>
    40c2:	89 d0                	mov    %edx,%eax
    40c4:	c1 e8 1f             	shr    $0x1f,%eax
    40c7:	84 c0                	test   %al,%al
    40c9:	75 75                	jne    4140 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    40cb:	89 d0                	mov    %edx,%eax
  neg = 0;
    40cd:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    40d4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    40d7:	31 ff                	xor    %edi,%edi
    40d9:	89 ce                	mov    %ecx,%esi
    40db:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    40de:	eb 02                	jmp    40e2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    40e0:	89 cf                	mov    %ecx,%edi
    40e2:	31 d2                	xor    %edx,%edx
    40e4:	f7 f6                	div    %esi
    40e6:	8d 4f 01             	lea    0x1(%edi),%ecx
    40e9:	0f b6 92 57 5c 00 00 	movzbl 0x5c57(%edx),%edx
  }while((x /= base) != 0);
    40f0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    40f2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    40f5:	75 e9                	jne    40e0 <printint+0x30>
  if(neg)
    40f7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    40fa:	89 c8                	mov    %ecx,%eax
    40fc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    40ff:	85 d2                	test   %edx,%edx
    4101:	74 08                	je     410b <printint+0x5b>
    buf[i++] = '-';
    4103:	8d 4f 02             	lea    0x2(%edi),%ecx
    4106:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    410b:	8d 79 ff             	lea    -0x1(%ecx),%edi
    410e:	66 90                	xchg   %ax,%ax
    4110:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    4115:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    4118:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    411f:	00 
    4120:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    4124:	89 34 24             	mov    %esi,(%esp)
    4127:	88 45 d7             	mov    %al,-0x29(%ebp)
    412a:	e8 e3 fe ff ff       	call   4012 <write>
  while(--i >= 0)
    412f:	83 ff ff             	cmp    $0xffffffff,%edi
    4132:	75 dc                	jne    4110 <printint+0x60>
    putc(fd, buf[i]);
}
    4134:	83 c4 4c             	add    $0x4c,%esp
    4137:	5b                   	pop    %ebx
    4138:	5e                   	pop    %esi
    4139:	5f                   	pop    %edi
    413a:	5d                   	pop    %ebp
    413b:	c3                   	ret    
    413c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    4140:	89 d0                	mov    %edx,%eax
    4142:	f7 d8                	neg    %eax
    neg = 1;
    4144:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    414b:	eb 87                	jmp    40d4 <printint+0x24>
    414d:	8d 76 00             	lea    0x0(%esi),%esi

00004150 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4150:	55                   	push   %ebp
    4151:	89 e5                	mov    %esp,%ebp
    4153:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    4154:	31 ff                	xor    %edi,%edi
{
    4156:	56                   	push   %esi
    4157:	53                   	push   %ebx
    4158:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    415b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    415e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4161:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    4164:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    4167:	0f b6 13             	movzbl (%ebx),%edx
    416a:	83 c3 01             	add    $0x1,%ebx
    416d:	84 d2                	test   %dl,%dl
    416f:	75 39                	jne    41aa <printf+0x5a>
    4171:	e9 c2 00 00 00       	jmp    4238 <printf+0xe8>
    4176:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4178:	83 fa 25             	cmp    $0x25,%edx
    417b:	0f 84 bf 00 00 00    	je     4240 <printf+0xf0>
  write(fd, &c, 1);
    4181:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4184:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    418b:	00 
    418c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4190:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    4193:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    4196:	e8 77 fe ff ff       	call   4012 <write>
    419b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    419e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    41a2:	84 d2                	test   %dl,%dl
    41a4:	0f 84 8e 00 00 00    	je     4238 <printf+0xe8>
    if(state == 0){
    41aa:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    41ac:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    41af:	74 c7                	je     4178 <printf+0x28>
      }
    } else if(state == '%'){
    41b1:	83 ff 25             	cmp    $0x25,%edi
    41b4:	75 e5                	jne    419b <printf+0x4b>
      if(c == 'd'){
    41b6:	83 fa 64             	cmp    $0x64,%edx
    41b9:	0f 84 31 01 00 00    	je     42f0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    41bf:	25 f7 00 00 00       	and    $0xf7,%eax
    41c4:	83 f8 70             	cmp    $0x70,%eax
    41c7:	0f 84 83 00 00 00    	je     4250 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    41cd:	83 fa 73             	cmp    $0x73,%edx
    41d0:	0f 84 a2 00 00 00    	je     4278 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    41d6:	83 fa 63             	cmp    $0x63,%edx
    41d9:	0f 84 35 01 00 00    	je     4314 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    41df:	83 fa 25             	cmp    $0x25,%edx
    41e2:	0f 84 e0 00 00 00    	je     42c8 <printf+0x178>
  write(fd, &c, 1);
    41e8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    41eb:	83 c3 01             	add    $0x1,%ebx
    41ee:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41f5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    41f6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    41f8:	89 44 24 04          	mov    %eax,0x4(%esp)
    41fc:	89 34 24             	mov    %esi,(%esp)
    41ff:	89 55 d0             	mov    %edx,-0x30(%ebp)
    4202:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    4206:	e8 07 fe ff ff       	call   4012 <write>
        putc(fd, c);
    420b:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    420e:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4211:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4218:	00 
    4219:	89 44 24 04          	mov    %eax,0x4(%esp)
    421d:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    4220:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    4223:	e8 ea fd ff ff       	call   4012 <write>
  for(i = 0; fmt[i]; i++){
    4228:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    422c:	84 d2                	test   %dl,%dl
    422e:	0f 85 76 ff ff ff    	jne    41aa <printf+0x5a>
    4234:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    4238:	83 c4 3c             	add    $0x3c,%esp
    423b:	5b                   	pop    %ebx
    423c:	5e                   	pop    %esi
    423d:	5f                   	pop    %edi
    423e:	5d                   	pop    %ebp
    423f:	c3                   	ret    
        state = '%';
    4240:	bf 25 00 00 00       	mov    $0x25,%edi
    4245:	e9 51 ff ff ff       	jmp    419b <printf+0x4b>
    424a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4250:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4253:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    4258:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    425a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4261:	8b 10                	mov    (%eax),%edx
    4263:	89 f0                	mov    %esi,%eax
    4265:	e8 46 fe ff ff       	call   40b0 <printint>
        ap++;
    426a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    426e:	e9 28 ff ff ff       	jmp    419b <printf+0x4b>
    4273:	90                   	nop
    4274:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4278:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    427b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    427f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4281:	b8 50 5c 00 00       	mov    $0x5c50,%eax
    4286:	85 ff                	test   %edi,%edi
    4288:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    428b:	0f b6 07             	movzbl (%edi),%eax
    428e:	84 c0                	test   %al,%al
    4290:	74 2a                	je     42bc <printf+0x16c>
    4292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4298:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    429b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    429e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    42a1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42a8:	00 
    42a9:	89 44 24 04          	mov    %eax,0x4(%esp)
    42ad:	89 34 24             	mov    %esi,(%esp)
    42b0:	e8 5d fd ff ff       	call   4012 <write>
        while(*s != 0){
    42b5:	0f b6 07             	movzbl (%edi),%eax
    42b8:	84 c0                	test   %al,%al
    42ba:	75 dc                	jne    4298 <printf+0x148>
      state = 0;
    42bc:	31 ff                	xor    %edi,%edi
    42be:	e9 d8 fe ff ff       	jmp    419b <printf+0x4b>
    42c3:	90                   	nop
    42c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    42c8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    42cb:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    42cd:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42d4:	00 
    42d5:	89 44 24 04          	mov    %eax,0x4(%esp)
    42d9:	89 34 24             	mov    %esi,(%esp)
    42dc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    42e0:	e8 2d fd ff ff       	call   4012 <write>
    42e5:	e9 b1 fe ff ff       	jmp    419b <printf+0x4b>
    42ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    42f0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    42f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    42f8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    42fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    4302:	8b 10                	mov    (%eax),%edx
    4304:	89 f0                	mov    %esi,%eax
    4306:	e8 a5 fd ff ff       	call   40b0 <printint>
        ap++;
    430b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    430f:	e9 87 fe ff ff       	jmp    419b <printf+0x4b>
        putc(fd, *ap);
    4314:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    4317:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    4319:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    431b:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4322:	00 
    4323:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    4326:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4329:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    432c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4330:	e8 dd fc ff ff       	call   4012 <write>
        ap++;
    4335:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    4339:	e9 5d fe ff ff       	jmp    419b <printf+0x4b>
    433e:	66 90                	xchg   %ax,%ax

00004340 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4340:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4341:	a1 e0 65 00 00       	mov    0x65e0,%eax
{
    4346:	89 e5                	mov    %esp,%ebp
    4348:	57                   	push   %edi
    4349:	56                   	push   %esi
    434a:	53                   	push   %ebx
    434b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    434e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    4350:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4353:	39 d0                	cmp    %edx,%eax
    4355:	72 11                	jb     4368 <free+0x28>
    4357:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4358:	39 c8                	cmp    %ecx,%eax
    435a:	72 04                	jb     4360 <free+0x20>
    435c:	39 ca                	cmp    %ecx,%edx
    435e:	72 10                	jb     4370 <free+0x30>
    4360:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4362:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4364:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4366:	73 f0                	jae    4358 <free+0x18>
    4368:	39 ca                	cmp    %ecx,%edx
    436a:	72 04                	jb     4370 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    436c:	39 c8                	cmp    %ecx,%eax
    436e:	72 f0                	jb     4360 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4370:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4373:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4376:	39 cf                	cmp    %ecx,%edi
    4378:	74 1e                	je     4398 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    437a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    437d:	8b 48 04             	mov    0x4(%eax),%ecx
    4380:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4383:	39 f2                	cmp    %esi,%edx
    4385:	74 28                	je     43af <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4387:	89 10                	mov    %edx,(%eax)
  freep = p;
    4389:	a3 e0 65 00 00       	mov    %eax,0x65e0
}
    438e:	5b                   	pop    %ebx
    438f:	5e                   	pop    %esi
    4390:	5f                   	pop    %edi
    4391:	5d                   	pop    %ebp
    4392:	c3                   	ret    
    4393:	90                   	nop
    4394:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4398:	03 71 04             	add    0x4(%ecx),%esi
    439b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    439e:	8b 08                	mov    (%eax),%ecx
    43a0:	8b 09                	mov    (%ecx),%ecx
    43a2:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    43a5:	8b 48 04             	mov    0x4(%eax),%ecx
    43a8:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    43ab:	39 f2                	cmp    %esi,%edx
    43ad:	75 d8                	jne    4387 <free+0x47>
    p->s.size += bp->s.size;
    43af:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    43b2:	a3 e0 65 00 00       	mov    %eax,0x65e0
    p->s.size += bp->s.size;
    43b7:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    43ba:	8b 53 f8             	mov    -0x8(%ebx),%edx
    43bd:	89 10                	mov    %edx,(%eax)
}
    43bf:	5b                   	pop    %ebx
    43c0:	5e                   	pop    %esi
    43c1:	5f                   	pop    %edi
    43c2:	5d                   	pop    %ebp
    43c3:	c3                   	ret    
    43c4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    43ca:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    43d0:	55                   	push   %ebp
    43d1:	89 e5                	mov    %esp,%ebp
    43d3:	57                   	push   %edi
    43d4:	56                   	push   %esi
    43d5:	53                   	push   %ebx
    43d6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43d9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    43dc:	8b 1d e0 65 00 00    	mov    0x65e0,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43e2:	8d 48 07             	lea    0x7(%eax),%ecx
    43e5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    43e8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43ea:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    43ed:	0f 84 9b 00 00 00    	je     448e <malloc+0xbe>
    43f3:	8b 13                	mov    (%ebx),%edx
    43f5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    43f8:	39 fe                	cmp    %edi,%esi
    43fa:	76 64                	jbe    4460 <malloc+0x90>
    43fc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    4403:	bb 00 80 00 00       	mov    $0x8000,%ebx
    4408:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    440b:	eb 0e                	jmp    441b <malloc+0x4b>
    440d:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4410:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    4412:	8b 78 04             	mov    0x4(%eax),%edi
    4415:	39 fe                	cmp    %edi,%esi
    4417:	76 4f                	jbe    4468 <malloc+0x98>
    4419:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    441b:	3b 15 e0 65 00 00    	cmp    0x65e0,%edx
    4421:	75 ed                	jne    4410 <malloc+0x40>
  if(nu < 4096)
    4423:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4426:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    442c:	bf 00 10 00 00       	mov    $0x1000,%edi
    4431:	0f 43 fe             	cmovae %esi,%edi
    4434:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    4437:	89 04 24             	mov    %eax,(%esp)
    443a:	e8 3b fc ff ff       	call   407a <sbrk>
  if(p == (char*)-1)
    443f:	83 f8 ff             	cmp    $0xffffffff,%eax
    4442:	74 18                	je     445c <malloc+0x8c>
  hp->s.size = nu;
    4444:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    4447:	83 c0 08             	add    $0x8,%eax
    444a:	89 04 24             	mov    %eax,(%esp)
    444d:	e8 ee fe ff ff       	call   4340 <free>
  return freep;
    4452:	8b 15 e0 65 00 00    	mov    0x65e0,%edx
      if((p = morecore(nunits)) == 0)
    4458:	85 d2                	test   %edx,%edx
    445a:	75 b4                	jne    4410 <malloc+0x40>
        return 0;
    445c:	31 c0                	xor    %eax,%eax
    445e:	eb 20                	jmp    4480 <malloc+0xb0>
    if(p->s.size >= nunits){
    4460:	89 d0                	mov    %edx,%eax
    4462:	89 da                	mov    %ebx,%edx
    4464:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4468:	39 fe                	cmp    %edi,%esi
    446a:	74 1c                	je     4488 <malloc+0xb8>
        p->s.size -= nunits;
    446c:	29 f7                	sub    %esi,%edi
    446e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4471:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4474:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4477:	89 15 e0 65 00 00    	mov    %edx,0x65e0
      return (void*)(p + 1);
    447d:	83 c0 08             	add    $0x8,%eax
  }
}
    4480:	83 c4 1c             	add    $0x1c,%esp
    4483:	5b                   	pop    %ebx
    4484:	5e                   	pop    %esi
    4485:	5f                   	pop    %edi
    4486:	5d                   	pop    %ebp
    4487:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4488:	8b 08                	mov    (%eax),%ecx
    448a:	89 0a                	mov    %ecx,(%edx)
    448c:	eb e9                	jmp    4477 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    448e:	c7 05 e0 65 00 00 e4 	movl   $0x65e4,0x65e0
    4495:	65 00 00 
    base.s.size = 0;
    4498:	ba e4 65 00 00       	mov    $0x65e4,%edx
    base.s.ptr = freep = prevp = &base;
    449d:	c7 05 e4 65 00 00 e4 	movl   $0x65e4,0x65e4
    44a4:	65 00 00 
    base.s.size = 0;
    44a7:	c7 05 e8 65 00 00 00 	movl   $0x0,0x65e8
    44ae:	00 00 00 
    44b1:	e9 46 ff ff ff       	jmp    43fc <malloc+0x2c>
