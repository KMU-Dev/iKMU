.class Ltw/edu/kmu/act/MainPageActivityV2$22;
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

    .line 847
    iput-object p1, p0, Ltw/edu/kmu/act/MainPageActivityV2$22;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 852
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$22;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    const-class v1, Ltw/edu/kmu/act/AppInstallActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 853
    iget-object v0, p0, Ltw/edu/kmu/act/MainPageActivityV2$22;->this$0:Ltw/edu/kmu/act/MainPageActivityV2;

    invoke-virtual {v0, p1}, Ltw/edu/kmu/act/MainPageActivityV2;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
