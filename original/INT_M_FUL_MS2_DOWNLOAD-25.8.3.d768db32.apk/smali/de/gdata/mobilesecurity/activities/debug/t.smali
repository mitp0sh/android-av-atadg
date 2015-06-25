.class Lde/gdata/mobilesecurity/activities/debug/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lde/gdata/webportal/android/Preferences;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;


# direct methods
.method constructor <init>(Lde/gdata/mobilesecurity/activities/debug/DebugOptions;Lde/gdata/webportal/android/Preferences;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/debug/t;->c:Lde/gdata/mobilesecurity/activities/debug/DebugOptions;

    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/debug/t;->a:Lde/gdata/webportal/android/Preferences;

    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/debug/t;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/debug/t;->a:Lde/gdata/webportal/android/Preferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/debug/t;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/webportal/android/Preferences;->setWebPortalAddress(Ljava/lang/String;)V

    .line 196
    return-void
.end method
