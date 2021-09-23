.class Ltw/edu/kmu/act/SeatBookingView1Activity$3;
.super Ljava/lang/Object;
.source "SeatBookingView1Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView1Activity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

.field final synthetic val$returnCode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView1Activity;Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    iput-object p2, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->val$returnCode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string p1, "1"

    .line 281
    iget-object p2, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->val$returnCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    const-string p2, "update"

    invoke-static {p1, p2}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$402(Ltw/edu/kmu/act/SeatBookingView1Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 284
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView1Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 285
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;

    iget-object p2, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$3;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView1Activity;Ltw/edu/kmu/act/SeatBookingView1Activity$1;)V

    const/4 p2, 0x1

    .line 286
    new-array p2, p2, [Ljava/lang/Integer;

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
