.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 221
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 217
    new-instance v0, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    .line 222
    return-void
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 274
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    if-eqz p1, :cond_0

    .line 276
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 280
    :cond_0
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    .line 282
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 284
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 286
    :cond_2
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 231
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 233
    new-instance v1, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v1, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getCallfilterConfig()Ljava/lang/String;

    move-result-object v1

    .line 235
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 237
    const-string v1, "BlockingsFragment.loadInBackground"

    invoke-static {v0, v1}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->getDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 238
    const-string v3, "SELECT * FROM logblockings WHERE configuration = ? AND direction = ?ORDER BY timestamp DESC"

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 241
    const-string v1, "id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 242
    const-string v1, "name"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 243
    const-string v1, "phonenumber"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 244
    const-string v1, "timestamp"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 245
    const-string v1, "smstext"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 247
    if-eqz v9, :cond_3

    .line 248
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 250
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 251
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 252
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 253
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 255
    sget-object v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->HIDDEN_NUMBER:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0d01b2

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 257
    :cond_0
    sget-object v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->UNKNOWN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d01d4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 260
    :cond_1
    new-instance v1, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;

    invoke-direct/range {v1 .. v7}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_3
    const-string v0, "BlockingsFragment.loadInBackground"

    invoke-static {v0}, Lde/gdata/mobilesecurity/database/core/DatabaseHelper;->close(Ljava/lang/String;)V

    .line 267
    sget-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment;->ID_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 269
    return-object v8
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 215
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onCanceled(Ljava/util/List;)V

    return-void
.end method

.method public onCanceled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 313
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 315
    return-void
.end method

.method protected onReleaseResources(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 324
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onStopLoading()V

    .line 326
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->onReleaseResources(Ljava/util/List;)V

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    .line 330
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->deliverResult(Ljava/util/List;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->a:Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;

    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/activities/applock/LoaderAppListSupport$InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    .line 297
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->b:Ljava/util/List;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->forceLoad()V

    .line 298
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/callfilter/BlockingsFragment$ContactListLoader;->cancelLoad()Z

    .line 306
    return-void
.end method
