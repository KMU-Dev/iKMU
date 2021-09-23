.class Ltw/edu/kmu/act/BasicActivity$1;
.super Ljava/lang/Object;
.source "BasicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/BasicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/BasicActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/BasicActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Ltw/edu/kmu/act/BasicActivity$1;->this$0:Ltw/edu/kmu/act/BasicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 102
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Ltw/edu/kmu/act/BasicActivity$1;->this$0:Ltw/edu/kmu/act/BasicActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/BasicActivity;->getRunnableActivity()Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
