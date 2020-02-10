.class Ltw/edu/kmu/act/MainPageActivityV2$12;
.super Ljava/lang/Object;
.source "MainPageActivityV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MainPageActivityV2;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/MainPageActivityV2;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/MainPageActivityV2;)V
    .locals 0

    .line 668
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 674
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const-class v1, Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 675
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-static {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->access$100(Ltw/edu/kmu/act/MainPageActivityV2;)Ltw/edu/kmu/act/MyApplication;

    move-result-object v0

    iget-boolean v0, v0, Ltw/edu/kmu/act/MyApplication;->isLogin:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    iget-boolean v0, v0, Ltw/edu/kmu/act/MainPageActivityV2;->isDebug:Z

    if-nez v0, :cond_0

    .line 676
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const-class v1, Ltw/edu/kmu/act/AuthorizationActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "class"

    .line 677
    const-class v1, Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 679
    :cond_0
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$12;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
