.class Ltw/edu/kmu/act/AuthorizationSeatActivity$3;
.super Ljava/lang/Object;
.source "AuthorizationSeatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/AuthorizationSeatActivity;->updateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/AuthorizationSeatActivity;)V
    .locals 0

    .line 290
    iput-object p1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 294
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    const-class v2, Ltw/edu/kmu/act/SeatBookingView1Activity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 295
    iget-object v1, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-virtual {v1, v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->startActivity(Landroid/content/Intent;)V

    .line 296
    iget-object v0, p0, Ltw/edu/kmu/act/AuthorizationSeatActivity$3;->this$0:Ltw/edu/kmu/act/AuthorizationSeatActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/AuthorizationSeatActivity;->finish()V

    return-void
.end method
