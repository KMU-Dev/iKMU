.class Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;
.super Landroid/os/AsyncTask;
.source "EvlQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1037
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->returnCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V
    .locals 0

    .line 1035
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1035
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 1046
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2202(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "class"

    .line 1047
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1048
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1002(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1049
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->parseClassProgList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$702(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 1051
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "prog"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->parseQuestionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$702(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1052
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "questions"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->parseQuestionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1002(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1053
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "answeredTeacher"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->parseQuestionList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2402(Ltw/edu/kmu/act/EvlQuestionActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1055
    :goto_0
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2500(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1035
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1062
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1064
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->returnCode:Ljava/lang/String;

    const-string p1, "false"

    .line 1065
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1066
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1067
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2200(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v1, v1, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v1, :cond_0

    const-string v1, "ereason"

    goto :goto_0

    :cond_0
    const-string v1, "reason"

    :goto_0
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1068
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_1

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData$1;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity$GetServerData;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1076
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1077
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1082
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 1041
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
