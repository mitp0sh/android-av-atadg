.class Landroid/support/v7/internal/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;IIZ)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput p2, p0, Landroid/support/v7/internal/widget/ah;->b:I

    .line 398
    iput p3, p0, Landroid/support/v7/internal/widget/ah;->c:I

    .line 399
    iput-boolean p4, p0, Landroid/support/v7/internal/widget/ah;->d:Z

    .line 400
    return-void
.end method


# virtual methods
.method public a(IIZ)V
    .locals 0

    .prologue
    .line 409
    iput p1, p0, Landroid/support/v7/internal/widget/ah;->b:I

    .line 410
    iput p2, p0, Landroid/support/v7/internal/widget/ah;->c:I

    .line 411
    iput-boolean p3, p0, Landroid/support/v7/internal/widget/ah;->d:Z

    .line 412
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 403
    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v1, p0, Landroid/support/v7/internal/widget/ah;->b:I

    iget v2, p0, Landroid/support/v7/internal/widget/ah;->c:I

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/ah;->d:Z

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;IIZZ)V

    .line 405
    iget-object v0, p0, Landroid/support/v7/internal/widget/ah;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/ah;)Landroid/support/v7/internal/widget/ah;

    .line 406
    return-void
.end method
