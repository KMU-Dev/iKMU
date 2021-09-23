.class Ltw/edu/kmu/act/TrafficActivity$2;
.super Ljava/lang/Object;
.source "TrafficActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficActivity;)V
    .locals 0

    .line 36
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficActivity$2;->this$0:Ltw/edu/kmu/act/TrafficActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivity$2;->this$0:Ltw/edu/kmu/act/TrafficActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TrafficActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/BusActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivity$2;->this$0:Ltw/edu/kmu/act/TrafficActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TrafficActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
