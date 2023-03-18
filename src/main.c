#include <stdio.h>
#include <stdlib.h>

typedef struct developer {
    char* name;
    char* alias;
} developer;
 
typedef struct developer_group {
    developer* developers;
    char* logo;
} developer_group;
 
// Function to initialize a developer
void initDeveloper(developer *d, char* name, char* alias) {
    d->name = name;
    d->alias = alias;
}
 
// Function to initialize a developer_group
void initDeveloperGroup(developer_group *dg, developer* developers, char* logo) {
    dg->developers = developers;
    dg->logo = logo;
}
 
// Function to list all developers
void listDevelopers(developer_group *dg) {
    int i;
    for (i = 0; i < sizeof(dg->developers)/sizeof(dg->developers[0]); i++) {
        printf("Name: %s\nAlias: %s\n\n", dg->developers[i].name, dg->developers[i].alias);
    }
}
 
// Function to print the group logo
void printLogo(developer_group *dg) {
    printf("Group Logo: %s\n", dg->logo);
}
 
// Function to print the group
void printGroup(developer_group *dg) {
    listDevelopers(dg);
    printLogo(dg);
}
 
int main() {
    // Create developers
    developer d1, d2, d3;
    initDeveloper(&d1, "Nico Rast", "tsarocin");
    initDeveloper(&d2, "Jane", "jane_doe");
    initDeveloper(&d3, "Adam", "adam_smith");
 
    // Create a developer_group
    developer developers[] = {d1, d2, d3};
    developer_group dg;
    initDeveloperGroup(&dg, developers, "Hier ist ein großes Gruppenlogo");
 
    // Interaction loop
    int action = 0;
    while (action != 4) {
        printf("Choose your action:\nList Developers [1]\nPrint Group Logo [2]\nPrint Group [3]\nExit [4]\n\n");
        scanf("%d", &action);
 
        switch (action) {
            case 1:
                listDevelopers(&dg);
                break;
            case 2:
                printLogo(&dg);
                break;
            case 3:
                printGroup(&dg);
                break;
            case 4:
                printf("Exiting...\n");
                break;
            default:
                printf("Invalid action\n");
                break;
        }
    }
 
    return 0;
}
