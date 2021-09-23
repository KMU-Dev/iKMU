.class public Ltw/edu/kmu/listener/ClearListener;
.super Ljava/lang/Object;
.source "ClearListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private numScreen:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Ltw/edu/kmu/listener/ClearListener;->numScreen:Landroid/widget/EditText;

    .line 17
    iput-object p1, p0, Ltw/edu/kmu/listener/ClearListener;->numScreen:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 24
    iget-object p1, p0, Ltw/edu/kmu/listener/ClearListener;->numScreen:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
