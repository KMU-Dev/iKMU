.class Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;
.super Ljava/lang/Object;
.source "SeatBookingView2L3SeatV2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->initBackGround()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;

.field final synthetic val$newHeight:I

.field final synthetic val$newWidth:I

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;III)V
    .locals 0

    .line 106
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;

    iput p2, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$newWidth:I

    iput p3, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$newHeight:I

    iput p4, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$resId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 110
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->access$100(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 111
    iget v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$newWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 112
    iget v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$newHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 113
    iget-object v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;

    invoke-static {v1}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->access$100(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->this$0:Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;

    invoke-static {v0}, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;->access$100(Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity;)Landroid/widget/ImageView;

    move-result-object v0

    iget v1, p0, Ltw/edu/kmu/act/SeatBookingView2L3SeatV2Activity$1;->val$resId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method
