.class public Ltw/edu/kmu/listener/NumberListener;
.super Ljava/lang/Object;
.source "NumberListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private numScreen:Landroid/widget/EditText;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    .line 20
    iput-object p1, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    .line 24
    iput-object p1, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    .line 25
    iput-object p2, p0, Ltw/edu/kmu/listener/NumberListener;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 32
    check-cast p1, Landroid/widget/Button;

    .line 34
    iget-object v0, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 35
    iget-object v1, p0, Ltw/edu/kmu/listener/NumberListener;->text:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltw/edu/kmu/listener/NumberListener;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    iget-object v1, p0, Ltw/edu/kmu/listener/NumberListener;->text:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-object v1, p0, Ltw/edu/kmu/listener/NumberListener;->numScreen:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :goto_1
    return-void
.end method
