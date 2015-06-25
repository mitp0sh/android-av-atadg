.class Lde/gdata/webportal/android/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lde/gdata/webportal/android/c;->b:Lde/gdata/webportal/android/RegisterFragment;

    iput-object p2, p0, Lde/gdata/webportal/android/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lde/gdata/webportal/android/c;->b:Lde/gdata/webportal/android/RegisterFragment;

    iget-object v1, p0, Lde/gdata/webportal/android/c;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lde/gdata/webportal/android/RegisterFragment;->a(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;)V

    .line 224
    return-void
.end method
