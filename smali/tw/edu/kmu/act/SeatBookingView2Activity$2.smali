.class Ltw/edu/kmu/act/SeatBookingView2Activity$2;
.super Ljava/lang/Object;
.source "SeatBookingView2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView2Activity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView2Activity;)V
    .locals 0

    .line 114
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 119
    check-cast p1, Landroid/widget/Button;

    const/4 v0, 0x0

    .line 121
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->access$200(Ltw/edu/kmu/act/SeatBookingView2Activity;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/SeatBookingView2Activity;->access$200(Ltw/edu/kmu/act/SeatBookingView2Activity;)[I

    move-result-object v1

    aget v1, v1, v0

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 124
    iget-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView2Activity;

    invoke-static {p1, v0}, Ltw/edu/kmu/act/SeatBookingView2Activity;->access$300(Ltw/edu/kmu/act/SeatBookingView2Activity;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
