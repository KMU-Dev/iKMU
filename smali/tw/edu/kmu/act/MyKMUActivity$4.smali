.class Ltw/edu/kmu/act/MyKMUActivity$4;
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

    .line 172
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$4;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 176
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$4;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MyKMUActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/ClassRoomQueryNewActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 177
    iget-object v0, p0, Ltw/edu/kmu/act/MyKMUActivity$4;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MyKMUActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
