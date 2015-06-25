.class final Lde/gdata/mobilesecurity/privacy/ae;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;


# direct methods
.method private constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V
    .locals 0

    .prologue
    .line 605
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ae;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;Lde/gdata/mobilesecurity/privacy/ab;)V
    .locals 0

    .prologue
    .line 605
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/ae;-><init>(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 608
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 610
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ae;->a:Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;

    invoke-static {v0, p1}, Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;->a(Lde/gdata/mobilesecurity/privacy/PrivacyListFragment;[Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)I

    move-result v0

    .line 611
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 605
    check-cast p1, [Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/ae;->a([Lde/gdata/mobilesecurity/contacts/NumberPicker$NumberEntry;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
