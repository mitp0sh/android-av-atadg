.class final Lde/gdata/mobilesecurity/activities/logs/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lde/gdata/mobilesecurity/util/EulaListener;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field final synthetic f:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;Ljava/lang/String;Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/logs/w;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/logs/w;->b:Lde/gdata/mobilesecurity/util/EulaListener;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/logs/w;->c:Ljava/lang/String;

    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/logs/w;->d:Landroid/content/Context;

    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/logs/w;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/logs/w;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 504
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/w;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/w;->b:Lde/gdata/mobilesecurity/util/EulaListener;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/w;->c:Ljava/lang/String;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/w;->d:Landroid/content/Context;

    const v4, 0x7f0d0240

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lde/gdata/mobilesecurity/util/MyUtil;->showDialog(Landroid/support/v4/app/FragmentActivity;Lde/gdata/mobilesecurity/util/EulaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;

    .line 507
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/w;->e:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSEulaShown(Z)V

    .line 508
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/logs/w;->d:Landroid/content/Context;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/logs/w;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lde/gdata/mobilesecurity/activities/logs/w;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lde/gdata/mobilesecurity/activities/logs/w;->b:Lde/gdata/mobilesecurity/util/EulaListener;

    invoke-static {v0, v1, v2, v3}, Lde/gdata/mobilesecurity/activities/logs/LogFragment;->setLogMainEntries(Landroid/content/Context;Landroid/support/v4/app/FragmentActivity;Ljava/util/ArrayList;Lde/gdata/mobilesecurity/util/EulaListener;)V

    .line 510
    return-void
.end method
