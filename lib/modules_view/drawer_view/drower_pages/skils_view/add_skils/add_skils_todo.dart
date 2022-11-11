import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ps_welness/constants/my_theme.dart';
import 'package:ps_welness/controllers/skils_controller/add_skils_controller.dart';
import 'package:ps_welness/modules_view/drawer_view/drower_pages/skils_view/add_skils/todo_screens.dart';

class AddSkilsScreen extends StatelessWidget {
  static const id = '/Home_screen';
  final TodoController todoController = Get.put(TodoController());

  AddSkilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.ThemeColors,
        elevation: 0,
        title: Text('Add Skils'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.ThemeColors,
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Get.to(TodoScreen());
        },
      ),
      body: Obx(
        () => ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) => Dismissible(
            key: UniqueKey(),
            // background: Container(
            //   color: Colors.deepOrange,
            //   child: const Icon(
            //     Icons.delete,
            //     color: Colors.white,
            //   ),
            // ),
            // onDismissed: (_) {
            //   todoController.todos.removeAt(index);
            //   Get.snackbar('Remove!', "Task was succesfully Delete",
            //       snackPosition: SnackPosition.BOTTOM);
            // },
            child: ListTile(
              selectedTileColor: Colors.red,

              title: Text(
                todoController.todos[index].text!,
                style: todoController.todos[index].done
                    ? const TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.lineThrough,
                      )
                    : const TextStyle(
                        color: Colors.black,
                      ),
              ),

              // trailing: IconButton(
              //   onPressed: () => Get.to(() => TodoEdit(index: index)),
              //   icon: const Icon(Icons.edit),
              // ),
              // leading: Checkbox(
              //   value: todoController.todos[index].done,
              //   onChanged: (neWvalue) {
              //     var todo = todoController.todos[index];
              //     todo.done = neWvalue!;
              //     todoController.todos[index] = todo;
              //   },
              // ),
            ),
          ),
          itemCount: todoController.todos.length,
        ),
      ),
    );
  }
}
