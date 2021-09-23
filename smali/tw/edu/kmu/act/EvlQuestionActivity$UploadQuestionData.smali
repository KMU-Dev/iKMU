.class Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;
.super Landroid/os/AsyncTask;
.source "EvlQuestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlQuestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadQuestionData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private reason:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V
    .locals 1

    .line 943
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 946
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 947
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 948
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 949
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->reason:Ljava/lang/String;

    .line 951
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0010

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/EvlQuestionActivity;Ltw/edu/kmu/act/EvlQuestionActivity$1;)V
    .locals 0

    .line 943
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 943
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 974
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "year"

    .line 975
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sYear"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sem"

    .line 976
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "sem"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seqno"

    .line 977
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$900(Ltw/edu/kmu/act/EvlQuestionActivity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "seqno"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stuno"

    .line 978
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2000(Ltw/edu/kmu/act/EvlQuestionActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v2

    iget-object v2, v2, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "me"

    .line 979
    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$2100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "answers"

    const/4 v2, 0x0

    .line 980
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "push"

    .line 981
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1100(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "Y"

    goto :goto_0

    :cond_0
    const-string v1, "N"

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/EvlQuestionActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->resultString:Ljava/lang/String;

    .line 985
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->returnCode:Ljava/lang/String;

    .line 986
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ereason"

    goto :goto_1

    :cond_1
    const-string v0, "reason"

    :goto_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->reason:Ljava/lang/String;

    const-string p1, "true"

    .line 987
    iput-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 989
    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->result:Ljava/lang/String;

    .line 990
    invoke-static {}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 943
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 997
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 998
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 999
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1000
    iget-object p1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$1700(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 1001
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1002
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_0

    const-string v0, "Upload Completed"

    goto :goto_0

    :cond_0
    const-string v0, "\u4e0a\u50b3\u6210\u529f"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1003
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_1

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$1;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1013
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1014
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_4

    .line 1018
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1019
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_3

    const-string v0, "Upload Failed"

    goto :goto_2

    :cond_3
    const-string v0, "\u4e0a\u50b3\u5931\u6557"

    :goto_2
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1020
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1021
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->isEnglish:Z

    if-eqz v0, :cond_4

    const-string v0, "OK"

    goto :goto_3

    :cond_4
    const-string v0, "\u78ba\u5b9a"

    :goto_3
    new-instance v1, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$2;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData$2;-><init>(Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1027
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1028
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_4
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 955
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 956
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlQuestionActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    const-string v0, "class"

    .line 957
    iget-object v1, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlQuestionActivity;->access$300(Ltw/edu/kmu/act/EvlQuestionActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->url:Ljava/lang/String;

    goto :goto_0

    .line 963
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->this$0:Ltw/edu/kmu/act/EvlQuestionActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/EvlQuestionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/EvlQuestionActivity$UploadQuestionData;->url:Ljava/lang/String;

    :goto_0
    return-void
.end method
