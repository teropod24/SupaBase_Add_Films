import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EditNoteController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;
  TextEditingController titleC = TextEditingController();
  TextEditingController descC = TextEditingController();
  TextEditingController edad = TextEditingController();
  TextEditingController gender = TextEditingController();
  SupabaseClient client = Supabase.instance.client;
  

  Future<bool> editNote(int id) async {
    if (titleC.text.isNotEmpty && descC.text.isNotEmpty) {
      isLoading.value = true;
      await client
          .from("Peliculas")
          .update({"Film name": titleC.text, "Film description": descC.text, 
          "edad": int.parse(edad.text) , "genero" : gender.text}).match({
        "id": id,
      });
      return true;
    } else {
      return false;
    }
  }
}
