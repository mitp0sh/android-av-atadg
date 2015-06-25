.class Lde/gdata/mobilesecurity/activities/antitheft/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/antitheft/h;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/h;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->resetValues()V

    .line 504
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/antitheft/h;->a:Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->d(Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;)V

    .line 505
    invoke-static {}, Lde/gdata/mobilesecurity/activities/antitheft/IntroFragment;->closeDialog()V

    .line 506
    return-void
.end method
