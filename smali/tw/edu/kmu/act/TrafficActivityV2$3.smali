.class Ltw/edu/kmu/act/TrafficActivityV2$3;
.super Ljava/lang/Object;
.source "TrafficActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/TrafficActivityV2;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/TrafficActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/TrafficActivityV2;)V
    .locals 0

    .line 58
    iput-object p1, p0, Ltw/edu/kmu/act/TrafficActivityV2$3;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 62
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivityV2$3;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-virtual {v0}, Ltw/edu/kmu/act/TrafficActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/TrafficBikeMapV2Activity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    iget-object v0, p0, Ltw/edu/kmu/act/TrafficActivityV2$3;->this$0:Ltw/edu/kmu/act/TrafficActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/TrafficActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
