.class Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;
.super Landroid/os/AsyncTask;
.source "ClassRoomQueryNewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/ClassRoomQueryNewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetRoomData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

.field url:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V
    .locals 0

    .line 425
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string p1, ""

    .line 427
    iput-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->url:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ltw/edu/kmu/act/ClassRoomQueryNewActivity$1;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;-><init>(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 425
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3

    .line 447
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "date"

    .line 448
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$1000(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "plano"

    .line 449
    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-static {v1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$700(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :try_start_0
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    iget-object v1, v1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->serverResource:Ltw/edu/kmu/resource/ServerResource;

    iget-object v2, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ltw/edu/kmu/resource/ServerResource;->readServerData(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {v0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$1202(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 453
    :catch_0
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$300(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 425
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 460
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 461
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 462
    iget-object p1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$1300(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 433
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 434
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->access$1202(Ltw/edu/kmu/act/ClassRoomQueryNewActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 435
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->url:Ljava/lang/String;

    .line 436
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->this$0:Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 437
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 438
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8b80\u53d6\u4e2d..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "\u8acb\u7a0d\u5019"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, p0, Ltw/edu/kmu/act/ClassRoomQueryNewActivity$GetRoomData;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method
