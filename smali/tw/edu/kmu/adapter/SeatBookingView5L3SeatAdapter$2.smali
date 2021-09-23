.class Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;
.super Ljava/lang/Object;
.source "SeatBookingView5L3SeatAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;Ljava/util/HashMap;Landroid/content/Intent;)V
    .locals 0

    .line 134
    iput-object p1, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->this$0:Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;

    iput-object p2, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$map:Ljava/util/HashMap;

    iput-object p3, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 139
    invoke-static {}, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "btn2 click and info is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$map:Ljava/util/HashMap;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$intent:Landroid/content/Intent;

    const-string v0, "seatInfo"

    iget-object v1, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$map:Ljava/util/HashMap;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object p1, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->this$0:Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;

    invoke-static {p1}, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;->access$200(Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Ltw/edu/kmu/adapter/SeatBookingView5L3SeatAdapter$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
