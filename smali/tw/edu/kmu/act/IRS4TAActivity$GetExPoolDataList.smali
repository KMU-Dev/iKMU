.class Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;
.super Landroid/os/AsyncTask;
.source "IRS4TAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/IRS4TAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetExPoolDataList"
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

.field final synthetic this$0:Ltw/edu/kmu/act/IRS4TAActivity;

.field private url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;)V
    .locals 1

    .line 867
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 870
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->result:Ljava/lang/String;

    const-string p1, ""

    .line 871
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 872
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->returnCode:Ljava/lang/String;

    .line 874
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/IRS4TAActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/IRS4TAActivity;Ltw/edu/kmu/act/IRS4TAActivity$1;)V
    .locals 0

    .line 867
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;-><init>(Ltw/edu/kmu/act/IRS4TAActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 867
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 886
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "teafno"

    .line 887
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2000(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "classid"

    .line 888
    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2100(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->resultString:Ljava/lang/String;

    .line 893
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 894
    iput-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->result:Ljava/lang/String;

    .line 895
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/IRS4TAActivity;->parseSeqList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2602(Ltw/edu/kmu/act/IRS4TAActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 897
    iput-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->result:Ljava/lang/String;

    .line 898
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

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 867
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3

    .line 905
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 906
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 908
    :try_start_0
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2702(Ltw/edu/kmu/act/IRS4TAActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 909
    iget-object p1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2802(Ltw/edu/kmu/act/IRS4TAActivity;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 p1, 0x0

    .line 910
    :goto_0
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 911
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2700(Ltw/edu/kmu/act/IRS4TAActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "typeName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, p1

    .line 912
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2800(Ltw/edu/kmu/act/IRS4TAActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/IRS4TAActivity;->access$2600(Ltw/edu/kmu/act/IRS4TAActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "typeID"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 917
    invoke-static {}, Ltw/edu/kmu/act/IRS4TAActivity;->access$1600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show99View Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 878
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 879
    iget-object v0, p0, Ltw/edu/kmu/act/IRS4TAActivity$GetExPoolDataList;->this$0:Ltw/edu/kmu/act/IRS4TAActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/IRS4TAActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
