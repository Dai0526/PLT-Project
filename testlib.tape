int main() {
    file target;
    string handle;
    handle="apple";
    target=open("demo/originalFile.txt", "r");
    print_s(target);
    countWord(handle, target);
    return 0;
}
