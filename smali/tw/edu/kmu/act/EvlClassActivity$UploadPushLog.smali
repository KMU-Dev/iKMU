.class Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;
.super Landroid/os/AsyncTask;
.source "EvlClassActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/EvlClassActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadPushLog"
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

.field final synthetic this$0:Ltw/edu/kmu/act/EvlClassActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/EvlClassActivity;)V
    .locals 1

    .line 316
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 319
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->result:Ljava/lang/String;

    const-string p1, ""

    .line 320
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 321
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->returnCode:Ljava/lang/String;

    .line 323
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/EvlClassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0012

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/EvlClassActivity;Ltw/edu/kmu/act/EvlClassActivity$1;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;-><init>(Ltw/edu/kmu/act/EvlClassActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 316
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 334
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "year"

    .line 335
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlClassActivity;->access$800(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sem"

    .line 336
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlClassActivity;->access$800(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "sem"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "stuno"

    .line 337
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlClassActivity;->access$900(Ltw/edu/kmu/act/EvlClassActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seqno"

    .line 338
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlClassActivity;->access$800(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "seqno"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "teafno"

    .line 339
    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/EvlClassActivity;->access$800(Ltw/edu/kmu/act/EvlClassActivity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "teafno"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    invoke-static {}, Ltw/edu/kmu/act/EvlClassActivity;->access$1000()Ljava/lang/String;

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

    .line 341
    invoke-static {}, Ltw/edu/kmu/act/EvlClassActivity;->access$1000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlClassActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->resultString:Ljava/lang/String;

    .line 343
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 344
    iput-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 346
    iput-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->result:Ljava/lang/String;

    .line 347
    invoke-static {}, Ltw/edu/kmu/act/EvlClassActivity;->access$1000()Ljava/lang/String;

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

    .line 316
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 354
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 355
    iget-object p1, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/EvlClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 327
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 328
    iget-object v0, p0, Ltw/edu/kmu/act/EvlClassActivity$UploadPushLog;->this$0:Ltw/edu/kmu/act/EvlClassActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/EvlClassActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
