.class Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;
.super Ljava/lang/Object;
.source "SeatBookingView1Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView1Activity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView1Activity$4;)V
    .locals 0

    .line 367
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 371
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView1Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    const-string p2, "cancel"

    invoke-static {p1, p2}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$802(Ltw/edu/kmu/act/SeatBookingView1Activity;Ljava/lang/String;)Ljava/lang/String;

    .line 372
    invoke-static {}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$600()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "editMode is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;

    iget-object v0, v0, Ltw/edu/kmu/act/SeatBookingView1Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/SeatBookingView1Activity;->access$800(Ltw/edu/kmu/act/SeatBookingView1Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView1Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    iget-object p1, p1, Ltw/edu/kmu/act/SeatBookingView1Activity;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 374
    new-instance p1, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;

    iget-object p2, p0, Ltw/edu/kmu/act/SeatBookingView1Activity$4$2;->this$1:Ltw/edu/kmu/act/SeatBookingView1Activity$4;

    iget-object p2, p2, Ltw/edu/kmu/act/SeatBookingView1Activity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView1Activity;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;-><init>(Ltw/edu/kmu/act/SeatBookingView1Activity;Ltw/edu/kmu/act/SeatBookingView1Activity$1;)V

    const/4 p2, 0x1

    .line 375
    new-array p2, p2, [Ljava/lang/Integer;

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-virtual {p1, p2}, Ltw/edu/kmu/act/SeatBookingView1Activity$GetServerDataInfo;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
