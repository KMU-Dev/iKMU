.class Ltw/edu/kmu/act/IRSActivity$10;
.super Ljava/lang/Object;
.source "IRSActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/IRSActivity;->initBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/IRSActivity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/IRSActivity;)V
    .locals 0

    .line 814
    iput-object p1, p0, Ltw/edu/kmu/act/IRSActivity$10;->this$0:Ltw/edu/kmu/act/IRSActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 819
    iget-object p1, p0, Ltw/edu/kmu/act/IRSActivity$10;->this$0:Ltw/edu/kmu/act/IRSActivity;

    const-string v0, "3"

    invoke-static {p1, v0}, Ltw/edu/kmu/act/IRSActivity;->access$4400(Ltw/edu/kmu/act/IRSActivity;Ljava/lang/String;)V

    return-void
.end method
