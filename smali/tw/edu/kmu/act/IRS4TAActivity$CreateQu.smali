.class Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;
.super Landroid/os/AsyncTask;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateQu"
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
.field private questionId:Ljava/lang/String;

.field private result:Ljava/lang/String;

.field private resultString:Ljava/lang/String;

.field private returnCode:Ljava/lang/String;

.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 1

    .line 1479
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 1482
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->result:Ljava/lang/String;

    const-string p1, ""

    .line 1483
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 1484
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->returnCode:Ljava/lang/String;

    const-string p1, ""

    .line 1485
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->questionId:Ljava/lang/String;

    .line 1487
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V
    .locals 0

    .line 1479
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    return-void
.end method

.method static synthetic access$3300(Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;)Ljava/lang/String;
    .locals 0

    .line 1479
    iget-object p0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->questionId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1479
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1499
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 1500
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "classid"

    .line 1501
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "seqno"

    .line 1502
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$3200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "qutype"

    .line 1503
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "poolid"

    .line 1505
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$400(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1506
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "99"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "poolid"

    .line 1507
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$500(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "qutype"

    const-string v1, "99"

    .line 1508
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    :cond_1
    :goto_0
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->resultString:Ljava/lang/String;

    .line 1516
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->returnCode:Ljava/lang/String;

    .line 1517
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "questionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->questionId:Ljava/lang/String;

    const-string p1, "true"

    .line 1518
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 1520
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->result:Ljava/lang/String;

    .line 1521
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

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

    :goto_1
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1479
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 1528
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1529
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    const-string p1, "true"

    .line 1530
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->returnCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1531
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$900(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 1532
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$900(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/widget/Button;

    move-result-object p1

    new-instance v0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;

    invoke-direct {v0, p0}, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu$1;-><init>(Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1544
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$3400(Ltw/edu/kmu/act/IRS4TAActivity;)Llecho/lib/hellocharts/view/ColumnChartView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 1546
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$200(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    .line 1547
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1548
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "quick_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1550
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1700(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1552
    :cond_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 1553
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1554
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->questionId:Ljava/lang/String;

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1555
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1700(Ltw/edu/kmu/act/IRS4TAActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1491
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1492
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$CreateQu;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
