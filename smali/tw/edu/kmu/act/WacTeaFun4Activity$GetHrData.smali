.class Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;
.super Landroid/os/AsyncTask;
.source "WacTeaFun4Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/WacTeaFun4Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetHrData"
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

.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/WacTeaFun4Activity;)V
    .locals 1

    .line 299
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 301
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 302
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 303
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->returnCode:Ljava/lang/String;

    .line 304
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0066

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/WacTeaFun4Activity;Ltw/edu/kmu/act/WacTeaFun4Activity$1;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;-><init>(Ltw/edu/kmu/act/WacTeaFun4Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 299
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 316
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 317
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$700(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v1

    iget-object v1, v1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "yearsem"

    .line 318
    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$800(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "semCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$900(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ltw/edu/kmu/resource/ServerResource;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->resultString:Ljava/lang/String;

    .line 320
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 321
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->result:Ljava/lang/String;

    .line 322
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->resultString:Ljava/lang/String;

    const-string v2, "courList"

    invoke-virtual {v0, v1, v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->parseList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$1002(Ltw/edu/kmu/act/WacTeaFun4Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 323
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 324
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 325
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    iget-object v2, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v2}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$1100(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 330
    iput-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->result:Ljava/lang/String;

    .line 331
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$200()Ljava/lang/String;

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

    :cond_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 299
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 339
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 340
    invoke-static {}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "courList size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$1000(Ltw/edu/kmu/act/WacTeaFun4Activity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$1200(Ltw/edu/kmu/act/WacTeaFun4Activity;)V

    .line 342
    iget-object p1, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$1300(Ltw/edu/kmu/act/WacTeaFun4Activity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 308
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 309
    iget-object v0, p0, Ltw/edu/kmu/act/WacTeaFun4Activity$GetHrData;->this$0:Ltw/edu/kmu/act/WacTeaFun4Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/WacTeaFun4Activity;->access$600(Ltw/edu/kmu/act/WacTeaFun4Activity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
