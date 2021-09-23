.class Ltw/edu/kmu/act/SeatBookingView5Activity$1;
.super Ljava/lang/Object;
.source "SeatBookingView5Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView5Activity;->initLogOutBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView5Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView5Activity;)V
    .locals 0

    .line 125
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView5Activity;

    invoke-static {p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->access$100(Ltw/edu/kmu/act/SeatBookingView5Activity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Ltw/edu/kmu/act/MyApplication;->isSeatLogin:Z

    .line 131
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView5Activity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/SeatBookingView5Activity;->finish()V

    return-void
.end method
