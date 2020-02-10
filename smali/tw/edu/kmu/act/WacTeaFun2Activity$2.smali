.class Ltw/edu/kmu/act/WacTeaFun2Activity$2;
.super Ljava/lang/Object;
.source "WacTeaFun2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltw/edu/kmu/act/WacTeaFun2Activity;->showTypeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;


# direct methods
.method constructor <init>(Ltw/edu/kmu/act/WacTeaFun2Activity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Ltw/edu/kmu/act/WacTeaFun2Activity$2;->this$0:Ltw/edu/kmu/act/WacTeaFun2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 104
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
