echo my_name
echo $my_name
exit
echo $my_name
exit
echo $my_name
exit
env
my_name="julia"
my_name
echo $my_name
bash
export my_name="julia"
bash
unset my_name
echo $my_name
cd $HOME
vi .profile
cd os
cd unit1
nano first.sh
gedit first.sh
chmod +x first.sh
gedit first.sh
chmod +x first.sh
./first.sh
gedit first.sh
chmod +x first.sh
./first.sh
gedit second.sh
chmod +x second.sh
./second.sh
gedit second.sh
chmod +x second.sh
./second.sh
gedit nestedLoops.sh
chmod +x nestedLoops.sh
./nestedLoops.sh
gedit continue.sh
chmod +x continue.sh
./continue.sh
gedit continue.sh
chmod +x continue.sh
./continue.sh
gedit break.sh
chmod +x break.sh
./break.sh
crontab -1
crontab -l
sudo systemctl status cron.service
sudo apt update && sudo apt install -y gcc build- essential linux-tools-common linux-tools-$(juliamariamjikku -r) sysstat strace
sudo apt update && sudo apt install -y gcc build-essential linux-tools-common linux-tools-$(juliamariamjikku -r) sysstat strace
[200~# First, set your prompt to your SRN (last 3 digits only)
# Example: if your SRN is PES1UG24CS042, enter 042
export PS1="205\$ "~
[200~# How much RAM and swap do you have?
free -m
# What's the page size? (spoiler: it's 4096 on basically everything)
getconf PAGESIZE
# How many physical page frames does your system have?
awk '/MemTotal/ {print $2 / 4}' /proc/meminfo~
awk '/MemTotal/ {print $2 / 4}' /proc/meminfo
free -m
cat /proc/self/maps
[200~# Now let's write a program that prints where each region lives
cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF
gcc -o layout layout.c -no-pie
./layout~
cat << 'EOF' > layout.c
[200~# Now let's write a program that prints where each region lives
cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF

gcc -o layout layout.c -no-pie
./layout~
cat << 'EOF' > layout.c
[200~# Now let's write a program that prints where each region lives
cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EO

# Now let's write a program that prints where each region lives
cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF

gcc -o layout layout.c -no-pie
./layout
cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOFsnprintf(cmd, sizeof(cmd),

cat <<'EOF' >layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    sn
    return 0;


cat <<'EOF' >layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    sn
    return 0;




cat << 'EOF' >layout.c
#include<stdio.h>
#include<stdlib.h>

int global_init =205

cat << 'EOF' >layout.c
#include<stdio.h>
#include<stdlib.h>

int global_init = 42;
int global_uninit;
const char *rodata = "hello";

int main(void){

cat << 'EOF' >layout.c

#include<stdio.h>
#include<stdlib.h>

int global_init = 42;
int global_uninit;
const char *rodata = "hello";

int main(void){
int stack_var=7;
int *heap_var = malloc(64);
[200~printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

cat << 'EOF" >layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF

gcc -o layout layout.c -noipie
./layout
gcc -o layout layout.c -nopie
gcc -o layout layout.c -no-pie
[200~cat << 'EOF' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF

[200~cat << 'EO' > layout.c
#include <stdio.h>
#include <stdlib.h>

int global_init = 42;          // .data - initialized global
int global_uninit;             // .bss  - uninitialized global (zeroed)
const char *rodata = "hello";  // .rodata - read-only constant

int main(void) {
    int stack_var = 7;
    int *heap_var = malloc(64);

    printf("%-20s %p\n", "Text  (main):",    (void *)main);
    printf("%-20s %p\n", "Rodata:",          (void *)rodata);
    printf("%-20s %p\n", "Data  (init):",    (void *)&global_init);
    printf("%-20s %p\n", "BSS   (uninit):",  (void *)&global_uninit);
    printf("%-20s %p\n", "Heap  (malloc):",  (void *)heap_var);
    printf("%-20s %p\n", "Stack (local):",   (void *)&stack_var);

    // Print the gap between heap and stack
    printf("\nHeap-to-Stack gap: %lu MB\n",
           ((unsigned long)&stack_var - (unsigned long)heap_var) / (1024*1024));

    printf("\n--- /proc/self/maps (filtered) ---\n");
    char cmd[128];
    snprintf(cmd, sizeof(cmd),
        "cat /proc/%d/maps | grep -E 'heap|stack|layout'", getpid());
    system(cmd);

    free(heap_var);
    return 0;
}
EOF



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          cd OS-Jackfruit
cd boilerplate
ps aux | grep engine
sudo kill 4382
sudo pkill engine
ps aux | grep engine
cd OS-Jackfruit
cd boilerplate
sudo pkill -9 engine
cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit
cd boilerplate
sudo ./engine start alpha ./rootfs-alpha "./memory_hog"
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
cd OS-Jackfruit 
cd boilerplate
nano engine.c
nano monitor.c
make clean
make
sudo insmod monitor.ko
nano monitor.c
make clean
make
nano monitor.c
make clean
make
sudo insmod monitor.ko
dmesg -w
sudo dmseg -w
sudo dmesg -w
sudo rmmod monitor.c
make clean
make
sudo insmod monitor.ko
sudo dmesg -w
sudo dmesg -w | grep monitor
lsmod | grep monitor
ls /dev/container_monitor
sudo dmesg -w | grep monitor
nano monitor.c
sudo rmmod monitor.c
sudo rmmod monitor
sudo rmmod monitor.c
sudo insmod monitor.ko
sudo rmmod monitor.c
make clean
make
nano engine.c
nano monitor.c
sudo insmod monitor.ko
sudo rmmod monitor.c
sudo insmod monitor.ko
make clean
make
nano monitor.c
sudo insmod monitor.ko
make clean
make
sudo dmesg -w | grep monitor
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit
cd boilerplate
make clean
make
sudo insmod monitor.ko
dmesg -w | grep montior
sudo dmesg -w | grep montior
sudo rmmod monitor
sudo dmesg -w | grep montior
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
cd OS-Jackfruit
cd boilerplate
cd OS-Jackfruit
cd boilerplate
sudo rmmod monitor
make clean
make
sudo rmmod monitor
sudo insmod monitor.ko
sudo rmmod monitor
sudo dmesg | grep monitor
sudo dmesg -w| grep monitor
cd OS-Jackfruit
cd boilerplate
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
./memory_hog
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
sudo ./engine start alpha ./rootfs-alpha "while :; do malloc 1000000; done"
ls rootfs-alpha
ls rootfs-alpha/
cp memory_hog rootfs-alpha/
ls rootfs-alpha | grep memory_hog
chmod +x rootfs-alpha/memory_hog
sudo ./engine start alpha ./rootfs-alpha ./memory_hog 200
cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor ./rootfs-base
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
nano engine.c
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine ps
sudo ./engine shutdown
ps aux | grep engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine stop cpu
sudo ./engine stop io
sudo ./engine shutdown
ps aux | grep engine
sudo pkill -9 engine
sudo rm -f /tmp/mini_runtime.sock
ps aux | grep engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine stop cpu
sudo ./engine stop io
sudo ./engine shutdown
ps aux | grep engine
sudo pkill -9 engine
sudo rm -f /tmp/mini_runtime.sock
ps aux | grep engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine stop cpu
sudo ./engine stop io
sudo ./engine shutdown
ps aux | grep engine
nano monitor.c
nano engine.c
sudo pkill -9 engine
sudo rm -f /tmp/mini_runtime.sock
ps aux | grep engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo pkill -9 engine
sudo rm -f /tmp/mini_runtime.sock
ps aux | grep engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse; sleep 1; done"
sudo ./engine stop cpu
sudo ./engine stop io
sudo ./engine shutdown
ps aux | grep engine
sudo pkill -9 engine
ps aux | grep monitor
ps aux | grep engine
sudo rm -f /tmp/mini_runtime.sock
cs OS-Jackfruit
cd OS-Jackfruit
cd boilerplate
sudo engine.c ps
sudo ./engine ps
sudo ./engine stop cpu
sudo ./engine stop io
sudo ./engine pkill
sudo pkill engine
sudo ./engine ps
sudo ./engine stop cpu
sudo ./engine stop io
ps aux | grep engine
sudo pkill engine
sudo rm -f /tmp/mini_runtime.sock
sudo dmesg -w | grep monitor
sudo pkill engine
sudo pkill memory_hog
sudo pkill cpu_hog
sudo pkill io_pulse
sudo rm -f /tmp/mini_runtime.sock
sudo rm -rf logs
ps aux | grep engine
sudo apt clean
sudo demsg -w | grep monitor
sudo dmesg -w | grep monitor
cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor ./rootfs-base
cls
cd OS-Jackfruit
cd boilerplate
sudo ./engine superviosr ./rootfs-base
sudo pkill -9 engine
                                                                                                                                                                                                                                                                                                                                                                      cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor
sudo ./engine supervisor ./rootfs-base
nano engine.c
make\
make
gedit engine.c
sudo ./engine supervisor ./rootfs-base
make clean
sudo ./engine supervisor ./rootfs-base
make clean
make
gedit engine.c
make clean
make
gedit engine.c
make clean
make 
gedit engine.c
make clean
make
gedit engine.c
make clean
cd OS-Jackfruit
cd boilerplate
make clean
make
gedit engine.c
make clean
make
nano engine.c
nano monitor.c
make clean
make
nano engine.c
nano monitor.c
make clean
make
nano monitor.c
make clean
make
sudo ./engine supervisor ./rootfs-base
nano monitor.c
nano engine.c
cd OS-Jackfruit
cd boilerplate
nano monitor.c
sudo dmesg -w | grep monitor
cd OS-Jackfruit
cd boilerplate
sudo ./engine start alpha ./rootfs-alpha
sudo ./engine start beta ./rootfs-beta
sudo ./engine start alpha ./rootfs-alpha "echo hello"
sudo ./engine start beta ./rootfs-beta "echo hello"
sudo pkill -9 engine
sudo ./engine start alpha ./rootfs-alpha "echo hello"
sudo ./engine start beta ./rootfs-beta "echo hello"
sudo ./engine start alpha ./rootfs-alpha "./memory hog 200"
cd OS-Jackfruit
cd boilerplate
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
sudo ./engine start beta ./rootfs-beta "echo hello"
sudo ./engine shutdown
sudo ./engine start cpu ./rootfs-alpha
sudo ./engine start io ./rootfs-beta
sudo ./engine start cpu ./rootfs-alpha
sudo ./engine start io ./rootfs-beta
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse;sleep 1; done"
sudo pkill engine
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse;sleep 1; done"
sudo ./engine shutdown
sudo ./engine start cpu ./rootfs-alpha "yes > /dev/null"
sudo ./engine start io ./rootfs-beta "while true; do echo pulse;sleep 1; done"
cat logs.io/logs
insmod monitor.ko
sudo insmod monitor.ko
cat logs/*
sudo ./engine shutdown
sudo dmesg | grep monitor
sudo dmesg -w| grep monitor
cd OS-Jackfruit
cd boilerplate
sudo dmesg -w| grep monitor
cd OS-Jackfrui
cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit
cd boilerplate
sudo./engine supervisor rootfs-base
sudo ./engine supervisor rootfs-base
cd OS-Jackfruit
cd boilerplate
sudo ./engine supervisor rootfs-base
cd OS-Jackfruit/boilerplate
sudo insmod monitor.ko
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit/boilerplate
sudo ./engine supeervisor ./rootfs-base
sudo ./engine supeervisor rootfs-base
cd OS-Jackfruit/boilerplate
sudo ./engine start alpha rootfs-alpha "echo hello"
sudo pkill engine
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
sudo pkill engine
cd OS-Jackfruit/boilerplate
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit/boilerplate
sudo dmesg -w| grep monitor
cd OS-Jackfruit/boilerplate
sudo ./engine supervisor ./rootfs-base
gedit engine.c
gedit monitor.c
gedit memory_hog.c
gedit cpu_hog.c
cd OS-Jackfruit/boilerplate
sudo ./engine start alpha ./rootfs-alpha "while true; do echo hello; done"
sudo pkill engine
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
sudo dmesg -w | grep "SOFT"
sudo pkill engine
gedit engine.c
make clean
make
sudo rmmod monitor
sudo insmod monitor.ko
lsmod | grep monitor
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 200"
sudo dmesg -w | grep "SOFT"
sudo dmesg -w | grep monitor
sudo ./engine start alpha ./rootfs-alpha "yes >/dev/null"
sudo dmesg -w | grep monitor
cat logs
cat log
sudo pkill engine
sudo ./engine start alpha ./rootfs-alpha "yes >/dev/null"
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 2000"
sudo pkill engine
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 2000"
sudo  demsg -w | grep monitor
sudo  dmesg -w | grep monitor
sudopkill -9 engine
sudo pkill -9 engine
sudo rm -f /tmp/mini_runtime.sock
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 2000"
sudo pkill -9 engine

sudo ./engine start alpha ./rootfs-alpha "./memory_hog 2000"
sudo dmesg -w |grep monitor
sudo insmod monitor.ko
sudo rmmod monitor
sudo insmod monitor.ko
lsmod |fre monitor
lsmod |grep monitor
sudo ./engine start alpha ./rootfs-alpha "./memory_hog 2000"
sudo dmesg -w |grep monitor
cd OS-Jackfruit/boilerplate
sudo ./engine supervisor ./rootfs-base
clear
sudo ./engine supervisor ./rootfs-base
cd OS-Jackfruit/boilerplate
clear
sudo ./engine start alpha ./rootfs-alpha
sudo ./engine start alpha ./rootfs-alpha /bin/sh
sudo ./engine start beta ./rootfs-beta /bin/sh
cd OS-Jacfruit/boilerplate
cd OS-Jackfruit/boilerplate
sudo ./engine start alpha ./rootfs-alpha /bin/sh
sudo pkill engine
sudo ./engine start alpha ./rootfs-alpha /bin/sh
start ./engine supervisor ./rootfs-base
sudo ./engine supervisor ./rootfs-base
git init
git add .
git commit -m "Initial commit"
git config --global user.email "juliajikku@gmail.com"
git config --global user.name "juliajikku"
git add .
cd OS-Jackfruit
git remote add origin https://github.com/juliajikku/juliajikkukanishkasarraf_OS_Jackfruit.git
git remote set-url origin https://github.com/juliajikku/juliajikkukanishkasarraf_OS_Jackfruit.git
git add .
git commit -m "transferring the project"
git push -u origin main
git config --global --unset crederntial.helper
git remote set-url origin https://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@github.com/juliajikku/juliajikkukanishkasarraf_OS_Jackfruit.git
git push -u origin main
