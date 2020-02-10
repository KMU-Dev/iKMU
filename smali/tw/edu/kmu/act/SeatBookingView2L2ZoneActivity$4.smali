.class Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;
.super Ljava/lang/Object;
.source "SeatBookingView2L2ZoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->initCalendar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;)V
    .locals 0

    .line 296
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 300
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->setNextMonth()V

    .line 301
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity$4;->this$0:Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;

    invoke-virtual {p1}, Ltw/edu/kmu/act/SeatBookingView2L2ZoneActivity;->refreshCalendar()V

    return-void
.end method
