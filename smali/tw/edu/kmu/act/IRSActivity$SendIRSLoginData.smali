.class Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;
.super Landroid/os/AsyncTask;
.source "IRSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendIRSLoginData"
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

.field private status:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 1

    .line 470
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 473
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->status:Ljava/lang/String;

    const-string p1, ""

    .line 474
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 475
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 476
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 477
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->reason:Ljava/lang/String;

    .line 479
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0026

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V
    .locals 0

    .line 470
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 470
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 490
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "classid"

    .line 494
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$200(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stuno"

    .line 495
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teacherno"

    .line 496
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt"

    const/4 v2, 0x0

    .line 497
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->resultString:Ljava/lang/String;

    .line 501
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 502
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 505
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->result:Ljava/lang/String;

    .line 506
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

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

    .line 470
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 513
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 514
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 483
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 484
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$SendIRSLoginData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
