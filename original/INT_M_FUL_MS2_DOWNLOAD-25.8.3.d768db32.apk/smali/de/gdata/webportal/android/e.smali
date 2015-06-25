.class Lde/gdata/webportal/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

.field final synthetic c:Lde/gdata/webportal/android/RegisterFragment;


# direct methods
.method constructor <init>(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lde/gdata/webportal/android/e;->c:Lde/gdata/webportal/android/RegisterFragment;

    iput-object p2, p0, Lde/gdata/webportal/android/e;->a:Landroid/content/Context;

    iput-object p3, p0, Lde/gdata/webportal/android/e;->b:Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lde/gdata/webportal/android/e;->c:Lde/gdata/webportal/android/RegisterFragment;

    iget-object v1, p0, Lde/gdata/webportal/android/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lde/gdata/webportal/android/e;->b:Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;

    invoke-static {v0, v1, v2}, Lde/gdata/webportal/android/RegisterFragment;->a(Lde/gdata/webportal/android/RegisterFragment;Landroid/content/Context;Lde/gdata/webportal/android/WebPortalClient$RegistrationInfo;)V

    .line 276
    return-void
.end method
