.class Ltw/edu/kmu/act/SplashActivity$GetServerData;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerData"
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
.field final synthetic this$0:Ltw/edu/kmu/act/SplashActivity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/SplashActivity;)V
    .locals 0

    .line 282
    iput-object p1, p0, Ltw/edu/kmu/act/SplashActivity$GetServerData;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/SplashActivity;Ltw/edu/kmu/act/SplashActivity$1;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SplashActivity$GetServerData;-><init>(Ltw/edu/kmu/act/SplashActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 282
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SplashActivity$GetServerData;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 291
    iget-object p1, p0, Ltw/edu/kmu/act/SplashActivity$GetServerData;->this$0:Ltw/edu/kmu/act/SplashActivity;

    iget-object v0, p0, Ltw/edu/kmu/act/SplashActivity$GetServerData;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/SplashActivity;->access$700(Ltw/edu/kmu/act/SplashActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/SplashActivity;->access$602(Ltw/edu/kmu/act/SplashActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 282
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SplashActivity$GetServerData;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 300
    iget-object p1, p0, Ltw/edu/kmu/act/SplashActivity$GetServerData;->this$0:Ltw/edu/kmu/act/SplashActivity;

    invoke-static {p1}, Ltw/edu/kmu/act/SplashActivity;->access$200(Ltw/edu/kmu/act/SplashActivity;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 286
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
