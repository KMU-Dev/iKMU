.class Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;
.super Landroid/os/AsyncTask;
.source "MyKMUActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/MyKMUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetIrsClassByRoomData"
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

    .line 905
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 908
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->result:Ljava/lang/String;

    const-string p1, ""

    .line 909
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->resultString:Ljava/lang/String;

    const-string p1, ""

    .line 910
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->returnCode:Ljava/lang/String;

    .line 912
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/MyKMUActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0c0021

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;Ltw/edu/kmu/act/MyKMUActivity$1;)V
    .locals 0

    .line 905
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;-><init>(Ltw/edu/kmu/act/MyKMUActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 905
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 924
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 925
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/MyKMUActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-object p1, p1, v3

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    iget-object p1, p1, Ltw/edu/kmu/act/MyApplication;->UserID:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ltw/edu/kmu/resource/ServerResource;->getWebServiceDataUsingPost(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->resultString:Ljava/lang/String;

    .line 926
    new-instance p1, Lorg/json/JSONObject;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->resultString:Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->returnCode:Ljava/lang/String;

    const-string p1, "true"

    .line 927
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->result:Ljava/lang/String;

    .line 928
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->resultString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltw/edu/kmu/act/MyKMUActivity;->parseClassList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/MyKMUActivity;->access$1202(Ltw/edu/kmu/act/MyKMUActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "false"

    .line 930
    iput-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->result:Ljava/lang/String;

    .line 931
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

    .line 905
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7

    .line 938
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 939
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object p1, p1, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 940
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1200(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1200(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 941
    iget-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/MyKMUActivity;->access$1200(Ltw/edu/kmu/act/MyKMUActivity;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 942
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "teafenam"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "teafnam"

    goto :goto_0

    .line 943
    :goto_1
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->currentLocale:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "englishco"

    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    goto :goto_3

    :cond_1
    const-string v0, "chineseco"

    goto :goto_2

    .line 944
    :goto_3
    iget-object v1, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    const-string v0, "cono"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    const-string v0, "teafno"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    const-string v0, "seqno"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Ltw/edu/kmu/act/MyKMUActivity;->access$1300(Ltw/edu/kmu/act/MyKMUActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 916
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 917
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$GetIrsClassByRoomData;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    iget-object v0, v0, Ltw/edu/kmu/act/MyKMUActivity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
