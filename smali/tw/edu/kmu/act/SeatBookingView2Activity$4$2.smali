.class Ltw/edu/kmu/act/SeatBookingView2Activity$4$2;
.super Ljava/lang/Object;
.source "SeatBookingView2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView2Activity$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/SeatBookingView2Activity$4;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView2Activity$4;)V
    .locals 0

    .line 334
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView2Activity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 338
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView2Activity$4;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView2Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView2Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 339
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;

    iget-object p2, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView2Activity$4;

    iget-object p2, p2, Ltw/edu/kmu/act/SeatBookingView2Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView2Activity;Ltw/edu/kmu/act/SeatBookingView2Activity$1;)V

    const/4 p2, 0x1

    .line 340
    new-array p2, p2, [Ljava/lang/Integer;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SeatBookingView2Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
