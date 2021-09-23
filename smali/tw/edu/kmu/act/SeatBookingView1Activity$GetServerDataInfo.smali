.class Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;
.super Landroid/os/AsyncTask;
.source "SeatBookingView1Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw/edu/kmu/act/SeatBookingView1Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetServerDataInfo"
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
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;


# direct methods
.method private constructor <init>(Ltw/edu/kmu/act/SeatBookingView1Activity;)V
    .locals 0

    .line 393
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ltw/edu/kmu/act/SeatBookingView1Activity;Ltw/edu/kmu/act/SeatBookingView1Activity$1;)V
    .locals 0

    .line 393
    invoke-direct {p0, p1}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView1Activity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 393
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->doInBackground([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    .line 402
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$1000(Ltw/edu/kmu/act/SeatBookingView1Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$902(Ltw/edu/kmu/act/SeatBookingView1Activity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 403
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$1100(Ltw/edu/kmu/act/SeatBookingView1Activity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3f7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p1, "\u66f4\u65b0\u5b8c\u6210"

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 393
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 397
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
