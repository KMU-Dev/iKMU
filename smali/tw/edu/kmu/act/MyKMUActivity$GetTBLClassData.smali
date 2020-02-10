.class Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;
.super Landroid/os/AsyncTask;
.source "MyKMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MyKMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetTBLClassData"
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
.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 1

    .line 1295
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1298
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 1299
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1300
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->returnCode:Ljava/lang/String;

    .line 1302
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c004e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V
    .locals 0

    .line 1295
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1295
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1314
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "stuno"

    .line 1318
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->resultString:Ljava/lang/String;

    .line 1320
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 1321
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->result:Ljava/lang/String;

    .line 1322
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->access$1602(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1324
    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->result:Ljava/lang/String;

    .line 1325
    invoke-static {}, Ltw/edu/kmu/act/MyKMUActivity;->access$000()Ljava/lang/String;

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

    .line 1295
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 1332
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1333
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1334
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1700(Ltw/edu/kmu/act/MyKMUActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1306
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1307
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetTBLClassData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
