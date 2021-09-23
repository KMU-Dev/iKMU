.class Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;
.super Landroid/os/AsyncTask;
.source "IRSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIRSCurrentData"
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

    .line 331
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 334
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->status:Ljava/lang/String;

    const-string p1, ""

    .line 335
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 336
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 337
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 338
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->reason:Ljava/lang/String;

    .line 340
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRSActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRSActivity;Ltw/edu/kmu/act/IRSActivity$1;)V
    .locals 0

    .line 331
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;-><init>(Ltw/edu/kmu/act/IRSActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 331
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 351
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "classid"

    .line 355
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$200(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stuno"

    .line 356
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$500(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "teacherno"

    .line 357
    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$600(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    .line 361
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->returnCode:Ljava/lang/String;

    .line 362
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->reason:Ljava/lang/String;

    .line 363
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->status:Ljava/lang/String;

    .line 364
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$702(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "currentServerTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$802(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 366
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRSActivity;->access$800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRSActivity;->dateDiff4Phone(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Ltw/edu/kmu/act/IRSActivity;->access$902(Ltw/edu/kmu/act/IRSActivity;J)J

    .line 367
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->resultString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "items"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "secno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$1002(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string p1, "true"

    .line 368
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 371
    iput-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->result:Ljava/lang/String;

    .line 372
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

    .line 331
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6

    .line 379
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 380
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 381
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 384
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHHmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v2, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v2}, Ltw/edu/kmu/act/IRSActivity;->access$800(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {v3}, Ltw/edu/kmu/act/IRSActivity;->access$700(Ltw/edu/kmu/act/IRSActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, p1}, Ltw/edu/kmu/act/IRSActivity;->dateDiff(Ljava/lang/String;Ljava/lang/String;Ljava/text/SimpleDateFormat;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 386
    div-long/2addr v2, v4

    .line 387
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$1402(Ltw/edu/kmu/act/IRSActivity;I)I

    .line 388
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$1502(Ltw/edu/kmu/act/IRSActivity;Landroid/os/Handler;)Landroid/os/Handler;

    .line 389
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1500(Ltw/edu/kmu/act/IRSActivity;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->ctRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1700(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 392
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1800(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 394
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1200(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 395
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1300(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 396
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 397
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1700(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 398
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1800(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    const-string p1, "1"

    .line 399
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 400
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->reason:Ljava/lang/String;

    .line 401
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-boolean v0, v0, Ltw/edu/kmu/act/IRSActivity;->isEnglish:Z

    if-eqz v0, :cond_1

    const-string v0, "OK"

    goto :goto_0

    :cond_1
    const-string v0, "\u78ba\u5b9a"

    :goto_0
    new-instance v1, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData$1;

    invoke-direct {v1, p0}, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData$1;-><init>(Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;)V

    .line 402
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 409
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 411
    :cond_2
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1600(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1700(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRSActivity;->access$1800(Ltw/edu/kmu/act/IRSActivity;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 344
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 345
    iget-object v0, p0, Ltw/edu/kmu/act/IRSActivity$GetIRSCurrentData;->this$0:Ltw/edu/kmu/act/IRSActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRSActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
