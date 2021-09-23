.class Ltw/edu/kmu/act/MyKMUActivity$3;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MyKMUActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MyKMUActivity;)V
    .locals 0

    .line 158
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$3;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 162
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$3;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/MyScheduledClassActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 163
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$3;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-static {v0}, Ltw/edu/kmu/act/MyKMUActivity;->access$200(Ltw/edu/kmu/act/MyKMUActivity;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v0

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyApplication;->isLoginV2:Z

    if-nez v0, :cond_0

    .line 164
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$3;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 166
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$3;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
