.class Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;
.super Ljava/lang/Object;
.source "SeatBookingView5L3SeatV2Activity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;

.field final synthetic val$seatData:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;Ljava/util/HashMap;)V
    .locals 0

    .line 135
    iput-object p1, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;

    iput-object p2, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->val$seatData:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 139
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/SeatBookingView5L4TimeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "seatInfo"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->val$seatData:Ljava/util/HashMap;

    const-string v3, "seatid"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->val$seatData:Ljava/util/HashMap;

    const-string v3, "seatname"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;

    invoke-static {v2}, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;->access$100(Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "bookdate"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity$2;->this$0:Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/SeatBookingView5L3SeatV2Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
