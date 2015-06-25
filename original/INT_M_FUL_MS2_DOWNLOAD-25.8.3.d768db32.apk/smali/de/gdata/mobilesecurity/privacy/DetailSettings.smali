.class public Lde/gdata/mobilesecurity/privacy/DetailSettings;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "detail_settings"

.field static a:Lde/gdata/mobilesecurity/privacy/DetailSettings;


# instance fields
.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/CheckBox;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/net/Uri;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/LinearLayout;

.field private l:Z

.field private m:Landroid/database/ContentObserver;

.field private n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

.field private o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

.field private p:Lde/gdata/mobilesecurity/contacts/Contact;

.field private q:Z

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 286
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->y:Z

    .line 287
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 288
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/DetailSettings;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    return v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    return p1
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/privacy/DetailSettings;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->d()V

    return-void
.end method

.method static synthetic b(Lde/gdata/mobilesecurity/privacy/DetailSettings;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 325
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->g:Landroid/widget/CheckBox;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 326
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarActivity;->setSupportProgressBarIndeterminateVisibility(Z)V

    .line 327
    return-void

    :cond_0
    move v0, v2

    .line 324
    goto :goto_0

    :cond_1
    move v1, v2

    .line 325
    goto :goto_1
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->y:Z

    return v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->x:Z

    return v0
.end method

.method static synthetic c(Lde/gdata/mobilesecurity/privacy/DetailSettings;)Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b()Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->i:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 331
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 333
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    .line 334
    iput-object v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 335
    const/4 v1, 0x0

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->y:Z

    .line 336
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->isSuppresCommuncation()Z

    move-result v1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->x:Z

    .line 343
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 346
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->setContactPicture()V

    .line 347
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->updateContact()V

    .line 349
    return-void

    .line 338
    :cond_1
    new-instance v1, Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/privacy/HiddenContact;-><init>(Landroid/database/Cursor;)V

    iput-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    .line 339
    iput-object v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    .line 340
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->y:Z

    .line 341
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isSuppresCommunication()Z

    move-result v1

    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->x:Z

    goto :goto_0
.end method


# virtual methods
.method public cancelHide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 359
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    .line 360
    return-void
.end method

.method public checkCheckboxes()V
    .locals 3

    .prologue
    const/16 v0, 0x8

    .line 238
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 239
    sget-object v2, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/Profile$Types;->PRIVATE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getProfileType()I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 240
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->g:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 241
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->g:Landroid/widget/CheckBox;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/t;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/privacy/t;-><init>(Lde/gdata/mobilesecurity/privacy/DetailSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 249
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 250
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    new-instance v2, Lde/gdata/mobilesecurity/privacy/u;

    invoke-direct {v2, p0}, Lde/gdata/mobilesecurity/privacy/u;-><init>(Lde/gdata/mobilesecurity/privacy/DetailSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->u:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->v:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-nez p2, :cond_0

    .line 234
    :goto_0
    return-object v0

    .line 181
    :cond_0
    new-instance v3, Lde/gdata/mobilesecurity/privacy/r;

    invoke-direct {v3, p0, v0}, Lde/gdata/mobilesecurity/privacy/r;-><init>(Lde/gdata/mobilesecurity/privacy/DetailSettings;Landroid/os/Handler;)V

    iput-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    .line 204
    if-eqz p3, :cond_2

    const-string v0, "dialog_shown"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    .line 206
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->d:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f020112

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->d:Landroid/graphics/drawable/Drawable;

    .line 209
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "uri"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->i:Landroid/net/Uri;

    .line 211
    const v0, 0x7f03008c

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 213
    const v0, 0x7f0b0315

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->k:Landroid/widget/LinearLayout;

    .line 214
    const v0, 0x7f0b0324

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->g:Landroid/widget/CheckBox;

    .line 215
    const v0, 0x7f0b0326

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->h:Landroid/widget/CheckBox;

    .line 216
    const v0, 0x7f0b0325

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->j:Landroid/widget/LinearLayout;

    .line 217
    const v0, 0x7f0b031e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    .line 218
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    const v0, 0x7f0b01f1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    .line 220
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    const v0, 0x7f0b0321

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->t:Landroid/widget/TextView;

    .line 222
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->t:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v0, 0x7f0b0320

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->w:Landroid/widget/TextView;

    .line 224
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->w:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    const v0, 0x7f0b0322

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->u:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0b0323

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->v:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 229
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 230
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getApplicationFont()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lde/gdata/mobilesecurity/util/TypeFaces;->getTypeFace(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 231
    invoke-static {v2, v0}, Lde/gdata/mobilesecurity/util/MyUtil;->setAppFont(Ljava/lang/Object;Landroid/graphics/Typeface;)V

    .line 232
    sput-object p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a:Lde/gdata/mobilesecurity/privacy/DetailSettings;

    move-object v0, v2

    .line 234
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 204
    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 354
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 279
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 280
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    .line 281
    invoke-direct {p0, v0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b(Z)V

    .line 282
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 283
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 271
    iput-boolean v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    .line 272
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->updateContact()V

    .line 274
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->i:Landroid/net/Uri;

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 275
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "dialog_shown"

    iget-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    return-void
.end method

.method public setContactPicture()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 85
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 87
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    if-nez v0, :cond_5

    .line 88
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-virtual {v0, v3}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->getContact(Landroid/content/Context;)Lde/gdata/mobilesecurity/contacts/Contact;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 109
    :cond_0
    :goto_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 115
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    .line 120
    :cond_2
    :goto_2
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 121
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_3
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_3
    :goto_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 144
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_5
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    :cond_4
    return-void

    .line 90
    :cond_5
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoto()[B

    move-result-object v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v0, ""

    invoke-static {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    .line 97
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/contacts/Contact;->getPhoneNumbers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 95
    :cond_6
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 103
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const v0, 0x7f0d0481

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->f:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 115
    goto/16 :goto_1

    .line 117
    :cond_9
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    goto/16 :goto_2

    .line 123
    :cond_a
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->e:Ljava/lang/String;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/MyLog;->d(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 129
    :cond_b
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    .line 130
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->n:Lde/gdata/mobilesecurity/privacy/HiddenNumber;

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 132
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->s:Landroid/widget/ImageView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_c
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->r:Landroid/widget/TextView;

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    :goto_8
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    goto/16 :goto_4

    :cond_d
    move v1, v2

    goto :goto_8

    .line 139
    :cond_e
    iput-boolean v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->q:Z

    goto/16 :goto_4

    .line 144
    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_5
.end method

.method protected setSuppressCommunication(Z)V
    .locals 0

    .prologue
    .line 295
    iput-boolean p1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->x:Z

    .line 296
    return-void
.end method

.method public tryHide(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 149
    if-eqz p1, :cond_2

    .line 150
    new-instance v0, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/PrivacyPreferences;->getHideWarningShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 156
    const-string v2, "uri"

    iget-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->setArguments(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/privacy/ChangeAccountDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 159
    iput-boolean v4, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->l:Z

    .line 165
    :cond_2
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a(Z)V

    .line 166
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->updateContact()V

    goto :goto_0
.end method

.method protected updateContact()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    const-string v1, "suppress_communcation"

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->c()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 306
    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->o:Lde/gdata/mobilesecurity/privacy/HiddenContact;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/HiddenContact;->isRemoveFromStore()Z

    move-result v1

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 308
    const-string v1, "remove_from_store"

    invoke-direct {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->b()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 309
    iput-object v3, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->p:Lde/gdata/mobilesecurity/contacts/Contact;

    .line 313
    :cond_0
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->m:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 318
    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/privacy/DetailSettings;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lde/gdata/mobilesecurity/privacy/DetailSettings;->i:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 321
    :cond_2
    return-void
.end method
