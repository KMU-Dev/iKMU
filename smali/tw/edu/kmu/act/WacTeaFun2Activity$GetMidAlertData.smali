.class Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;
.super Landroid/os/AsyncTask;
.source "WacTeaFun2Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/WacTeaFun2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMidAlertData"
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
.field private ereason:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V
    .locals 0

    .line 176
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 178
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 179
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 180
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 181
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->ereason:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/WacTeaFun2Activity;Ltw/edu/kmu/act/WacTeaFun2Activity$1;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 176
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 194
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 195
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v1, v1, Ltw/edu/kmu/act/WacTeaFun2Activity;->globalVariable:Ltw/edu/kmu/act/MyApplication;

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yearsem"

    .line 196
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$400(Ltw/edu/kmu/act/WacTeaFun2Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "semCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "prtype"

    .line 197
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$200(Ltw/edu/kmu/act/WacTeaFun2Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v1, v1, Ltw/edu/kmu/act/WacTeaFun2Activity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-static {v2}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun2Activity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "post"

    invoke-virtual {v1, v2, p1, v3}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$602(Ltw/edu/kmu/act/WacTeaFun2Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string v0, "result"

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->resultString:Ljava/lang/String;

    .line 202
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->returnCode:Ljava/lang/String;

    .line 203
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ereason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->ereason:Ljava/lang/String;

    const-string p1, "true"

    .line 204
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 206
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->result:Ljava/lang/String;

    .line 207
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$500()Ljava/lang/String;

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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 176
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 214
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 215
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object p1, p1, Ltw/edu/kmu/act/WacTeaFun2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 216
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->returnCode:Ljava/lang/String;

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$800(Ltw/edu/kmu/act/WacTeaFun2Activity;)V

    goto :goto_2

    .line 219
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun2Activity;->access$300(Ltw/edu/kmu/act/WacTeaFun2Activity;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun2Activity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Alert"

    goto :goto_0

    :cond_1
    const-string v0, "\u8b66\u793a\u8a0a\u606f"

    :goto_0
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->ereason:Ljava/lang/String;

    .line 222
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 223
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun2Activity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Enter"

    goto :goto_1

    :cond_2
    const-string v0, "\u78ba\u5b9a"

    :goto_1
    new-instance v1, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData$1;-><init>(Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 232
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 186
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$GetMidAlertData;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    iget-object v0, v0, Ltw/edu/kmu/act/WacTeaFun2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
