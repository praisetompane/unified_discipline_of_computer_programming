/*
    Memory allocated at execution time(i.e. runtime)

    Properties:
        Allocated in program's heap
        Can only be accessed through pointers

        C program memory layout
        |____________________|
        |       Stack        |
        |____________________|
        |         ↓          |  Stack size trends downwards in size over the course of program execution
        |                    |  Increases as we call functions, add variables, etc and decreases when they complete and their stack frames are removed(i.e. popped)
        |         ↑          |  Heap is trending upwards in size as we dynamically allocate memory for objects etc
        |____________________|
        |        Heap        |<-- Dynamic memory allocated here. Memory allocated without any order/randomly
        |____________________|
        | Uninitialized data |
        |____________________|
        | Initialized data   |
        |____________________|
        | Text/Code Segment  |
        |____________________|
*/