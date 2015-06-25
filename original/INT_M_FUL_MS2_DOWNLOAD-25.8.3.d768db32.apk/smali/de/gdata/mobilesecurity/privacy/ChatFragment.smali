.class public Lde/gdata/mobilesecurity/privacy/ChatFragment;
.super Landroid/support/v4/app/ListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/ListFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static savedText:Ljava/lang/String;


# instance fields
.field a:Lde/gdata/mobilesecurity/privacy/p;

.field b:Landroid/widget/ImageButton;

.field c:Landroid/widget/EditText;

.field d:Landroid/widget/Spinner;

.field private e:[Ljava/lang/String;

.field private f:Landroid/net/Uri;

.field private g:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Ljava/lang/String;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:Landroid/widget/TextView;

.field private o:Z

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->savedText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->h:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ChatFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 300
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 303
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 304
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 305
    invoke-virtual {v0, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 306
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    iget-object v6, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 308
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d04f0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v10}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 358
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Lde/gdata/mobilesecurity/privacy/m;

    invoke-direct {v7, p0, v1, v4}, Lde/gdata/mobilesecurity/privacy/m;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "SENT"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "SENT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 348
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v10, :cond_2

    .line 349
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 351
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v2

    .line 354
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    move-object v3, v4

    move-object v4, v6

    move-object v5, v2

    .line 356
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/ChatFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic d(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic e(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic f(Lde/gdata/mobilesecurity/privacy/ChatFragment;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a()V

    return-void
.end method

.method static synthetic g(Lde/gdata/mobilesecurity/privacy/ChatFragment;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->f:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic h(Lde/gdata/mobilesecurity/privacy/ChatFragment;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lde/gdata/mobilesecurity/privacy/ChatFragment;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->m:I

    return v0
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->k:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 213
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->f:Landroid/net/Uri;

    .line 214
    new-instance v0, Lde/gdata/mobilesecurity/privacy/p;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lde/gdata/mobilesecurity/privacy/p;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a:Lde/gdata/mobilesecurity/privacy/p;

    .line 216
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->f:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->m:I

    .line 219
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 220
    if-nez v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 224
    :cond_0
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    .line 225
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v1, v0, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    .line 226
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 227
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 230
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/j;

    invoke-direct {v1, p0}, Lde/gdata/mobilesecurity/privacy/j;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->m:I

    invoke-static {v2}, Lde/gdata/mobilesecurity/privacy/provider/PrivacyContentProvider;->getSMSUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "address in ( %s )"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    array-length v7, v7

    invoke-static {v7}, Lde/gdata/mobilesecurity/util/MyUtil;->buildInPlaceholders(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    const-string v6, "date ASC "

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 148
    const v0, 0x7f03008b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 150
    new-instance v0, Lde/gdata/mobilesecurity/util/BasePreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/util/BasePreferences;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/BasePreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 152
    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 154
    const v0, 0x7f0b031a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->p:Landroid/view/View;

    .line 155
    const v0, 0x7f0b0319

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->q:Landroid/view/View;

    .line 156
    const v0, 0x7f0b031d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    .line 157
    const v0, 0x7f0b031c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    .line 158
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->removeAllCustomNotifications()V

    .line 160
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/i;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/privacy/i;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    const v0, 0x7f0b02ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->n:Landroid/widget/TextView;

    .line 182
    const-string v0, ""

    .line 183
    if-eqz p3, :cond_0

    .line 184
    const-string v0, "m_smsText"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    sput-object v0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->savedText:Ljava/lang/String;

    .line 190
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    sget-object v2, Lde/gdata/mobilesecurity/privacy/ChatFragment;->savedText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 191
    const v0, 0x7f0b0318

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    .line 192
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->d:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020112

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->l:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020181

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->i:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020182

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->j:Landroid/graphics/drawable/Drawable;

    .line 200
    return-object v1
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 427
    return-void
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 375
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 376
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 377
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->e:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 378
    iget-object v4, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 381
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->g:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 382
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 383
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a:Lde/gdata/mobilesecurity/privacy/p;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/o;

    invoke-direct {v1, p0, p2}, Lde/gdata/mobilesecurity/privacy/o;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/p;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 393
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a:Lde/gdata/mobilesecurity/privacy/p;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 394
    invoke-virtual {p0, v5}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListShown(Z)V

    .line 395
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->a:Lde/gdata/mobilesecurity/privacy/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/p;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 400
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 242
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onResume()V

    .line 243
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListShown(Z)V

    .line 245
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    .line 246
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/k;

    invoke-direct {v2, p0, v0}, Lde/gdata/mobilesecurity/privacy/k;-><init>(Lde/gdata/mobilesecurity/privacy/ChatFragment;Landroid/support/v7/app/ActionBarActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 297
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 205
    const-string v0, "m_smsText"

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 207
    return-void
.end method

.method public setListShown(Z)V
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListShown(ZZ)V

    .line 432
    return-void
.end method

.method public setListShown(ZZ)V
    .locals 5

    .prologue
    const v4, 0x10a0001

    const/high16 v3, 0x10a0000

    const/4 v2, 0x0

    .line 403
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->o:Z

    if-ne v0, p1, :cond_0

    .line 422
    :goto_0
    return-void

    .line 406
    :cond_0
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->o:Z

    .line 407
    if-eqz p1, :cond_2

    .line 408
    if-eqz p2, :cond_1

    .line 409
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->p:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 410
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->q:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->p:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 415
    :cond_2
    if-eqz p2, :cond_3

    .line 416
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->p:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 417
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->q:Landroid/view/View;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 419
    :cond_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/ChatFragment;->q:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setListShownNoAnimation(Z)V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lde/gdata/mobilesecurity/privacy/ChatFragment;->setListShown(ZZ)V

    .line 437
    return-void
.end method
