.class Landroid/support/v7/internal/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/AdapterViewICS;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/AdapterViewICS;Landroid/support/v7/internal/widget/t;)V
    .locals 0

    .prologue
    .line 853
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/w;-><init>(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    iget-boolean v0, v0, Landroid/support/v7/internal/widget/AdapterViewICS;->u:Z

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->e()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/AdapterViewICS;->post(Ljava/lang/Runnable;)Z

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/w;->a:Landroid/support/v7/internal/widget/AdapterViewICS;

    invoke-static {v0}, Landroid/support/v7/internal/widget/AdapterViewICS;->b(Landroid/support/v7/internal/widget/AdapterViewICS;)V

    goto :goto_0
.end method
