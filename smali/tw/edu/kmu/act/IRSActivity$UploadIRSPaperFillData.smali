.class Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;
.super Landroid/os/AsyncTask;
.source "IRSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadIRSPaperFillData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 1

    .line 418
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 421
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 422
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 423
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->returnCode:Ljava/lang/String;

    .line 425
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0024

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V
    .locals 0

    .line 418
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 418
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 436
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "classid"

    .line 440
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$200(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "stuno"

    .line 441
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "teacherno"

    .line 442
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "secno"

    .line 443
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$1000(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "username"

    .line 444
    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$1900(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "answers"

    const/4 v2, 0x0

    .line 445
    aget-object p1, p1, v2

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-static {}, Ltw/edu/kmu/act/IRSActivity;->access$1100()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->resultString:Ljava/lang/String;

    .line 448
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 449
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 451
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->result:Ljava/lang/String;

    .line 452
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

    .line 418
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 459
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 460
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 461
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 462
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 463
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 429
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 430
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$UploadIRSPaperFillData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
