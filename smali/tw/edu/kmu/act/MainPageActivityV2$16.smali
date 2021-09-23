.class Ltw/edu/kmu/act/MainPageActivityV2$16;
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

    .line 746
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$16;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 751
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$16;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0}, Ltw/edu/kmu/act/MainPageActivityV2;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Ltw/edu/kmu/act/QuestionnaireActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p1

    .line 752
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$16;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
