.class Ltw/edu/kmu/act/MyKMUActivity$29;
.super Ljava/lang/Object;
.source "MyKMUActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/MyKMUActivity;->showCurrentClassDialog()V
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

    .line 1215
    iput-object p1, p0, Ltw/edu/kmu/act/MyKMUActivity$29;->this$0:Ltw/edu/kmu/act/MyKMUActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
